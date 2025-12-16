import 'dart:async';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:in_app_purchase/in_app_purchase.dart';
import 'package:injectable/injectable.dart';
import 'package:myoro_matchup/myoro_matchup.dart';

/// Service for managing in-app subscriptions.
///
/// This service wraps the in_app_purchase package and provides a simplified
/// interface for subscription management.
///
/// TODO: Complete setup:
/// 1. Configure products in App Store Connect (iOS)
/// 2. Configure products in Google Play Console (Android)
/// 3. Test with sandbox accounts
/// 4. Implement receipt validation on backend
@lazySingleton
final class SubscriptionService {
  /// Default constructor.
  SubscriptionService(this._sharedPreferencesService) {
    _init();
  }

  /// Shared preferences service.
  final SharedPreferencesService _sharedPreferencesService;

  /// In-app purchase instance.
  final InAppPurchase _inAppPurchase = InAppPurchase.instance;

  /// Stream subscription for purchase updates.
  StreamSubscription<List<PurchaseDetails>>? _purchaseSubscription;

  /// Controller for subscription status changes.
  final _subscriptionStatusController = StreamController<SubscriptionStatusEnum>.broadcast();

  /// Current subscription status.
  SubscriptionStatusEnum _currentStatus = SubscriptionStatusEnum.free;

  /// Available products.
  List<ProductDetails> _products = [];

  /// Whether the store is available.
  bool _storeAvailable = false;

  /// Stream of subscription status changes.
  Stream<SubscriptionStatusEnum> get statusStream => _subscriptionStatusController.stream;

  /// Current subscription status.
  SubscriptionStatusEnum get currentStatus => _currentStatus;

  /// Whether the store is available.
  bool get isStoreAvailable => _storeAvailable;

  /// Available products.
  List<ProductDetails> get products => _products;

  /// Monthly product ID based on platform.
  String get _monthlyProductId {
    if (Platform.isIOS) {
      return SubscriptionConstants.iosMonthlyProductId;
    }
    return SubscriptionConstants.androidMonthlyProductId;
  }

  /// Initialize the service.
  Future<void> _init() async {
    try {
      _storeAvailable = await _inAppPurchase.isAvailable();

      if (!_storeAvailable) {
        MmLogger.warning(
          '[SubscriptionService._init]: Store not available. '
          'This is expected in development/emulator environments.',
        );
        return;
      }

      // Listen to purchase updates
      _purchaseSubscription = _inAppPurchase.purchaseStream.listen(
        _onPurchaseUpdate,
        onError: (error) {
          MmLogger.error('[SubscriptionService._init]: Purchase stream error', error, StackTrace.current);
        },
      );

      // Load products
      await _loadProducts();

      // Check existing subscription status
      await _checkExistingSubscription();
    } catch (e, stackTrace) {
      await MmLogger.error('[SubscriptionService._init]: Failed to initialize', e, stackTrace);
    }
  }

  /// Load available products from the store.
  Future<void> _loadProducts() async {
    try {
      final response = await _inAppPurchase.queryProductDetails({_monthlyProductId});

      if (response.notFoundIDs.isNotEmpty) {
        MmLogger.warning(
          '[SubscriptionService._loadProducts]: Products not found: ${response.notFoundIDs}. '
          'TODO: Configure products in App Store Connect / Google Play Console.',
        );
      }

      _products = response.productDetails;

      if (_products.isEmpty) {
        MmLogger.warning(
          '[SubscriptionService._loadProducts]: No products available. '
          'TODO: Configure subscription products in store.',
        );
      }
    } catch (e, stackTrace) {
      await MmLogger.error('[SubscriptionService._loadProducts]: Failed to load products', e, stackTrace);
    }
  }

  /// Check for existing subscription.
  Future<void> _checkExistingSubscription() async {
    // Check from user data first
    final user = _sharedPreferencesService.loggedInUser;
    if (user != null) {
      // TODO: The user's subscription status should come from the backend
      // after receipt validation. For now, we use the isSubscribed field.
      _updateStatus(SubscriptionStatusEnum.free);
    }
  }

  /// Handle purchase updates.
  Future<void> _onPurchaseUpdate(List<PurchaseDetails> purchaseDetails) async {
    for (final purchase in purchaseDetails) {
      switch (purchase.status) {
        case PurchaseStatus.pending:
          _updateStatus(SubscriptionStatusEnum.pending);
          break;

        case PurchaseStatus.purchased:
        case PurchaseStatus.restored:
          // TODO: Validate receipt on backend before granting premium
          // For now, we'll mark as premium but this should be server-validated
          final valid = await _verifyPurchase(purchase);
          if (valid) {
            _updateStatus(SubscriptionStatusEnum.premium);
          }
          // Complete the purchase
          if (purchase.pendingCompletePurchase) {
            await _inAppPurchase.completePurchase(purchase);
          }
          break;

        case PurchaseStatus.error:
          await MmLogger.error(
            '[SubscriptionService._onPurchaseUpdate]: Purchase error',
            purchase.error,
            StackTrace.current,
          );
          if (purchase.pendingCompletePurchase) {
            await _inAppPurchase.completePurchase(purchase);
          }
          break;

        case PurchaseStatus.canceled:
          _updateStatus(SubscriptionStatusEnum.free);
          break;
      }
    }
  }

  /// Verify purchase with backend.
  ///
  /// TODO: Implement server-side receipt validation.
  /// This is critical for security - never trust client-side validation alone.
  Future<bool> _verifyPurchase(PurchaseDetails purchase) async {
    // TODO: Send purchase.verificationData to backend for validation
    // The backend should:
    // 1. Verify the receipt with Apple/Google
    // 2. Store the subscription status
    // 3. Return whether the subscription is valid

    MmLogger.warning(
      '[SubscriptionService._verifyPurchase]: TODO: Implement server-side receipt validation. '
      'Currently accepting all purchases without validation (INSECURE).',
    );

    // For development, accept all purchases
    // IMPORTANT: Replace with actual server validation before release
    return kDebugMode;
  }

  /// Update subscription status.
  void _updateStatus(SubscriptionStatusEnum status) {
    _currentStatus = status;
    _subscriptionStatusController.add(status);
  }

  /// Purchase the monthly subscription.
  ///
  /// Returns true if purchase was initiated successfully.
  Future<bool> purchaseMonthlySubscription() async {
    if (!_storeAvailable) {
      MmLogger.warning('[SubscriptionService.purchaseMonthlySubscription]: Store not available.');
      return false;
    }

    if (_products.isEmpty) {
      MmLogger.warning(
        '[SubscriptionService.purchaseMonthlySubscription]: No products available. '
        'TODO: Configure products in store.',
      );
      return false;
    }

    final product = _products.firstWhere((p) => p.id == _monthlyProductId, orElse: () => _products.first);

    final purchaseParam = PurchaseParam(productDetails: product);

    try {
      // Use buyNonConsumable for subscriptions
      final success = await _inAppPurchase.buyNonConsumable(purchaseParam: purchaseParam);
      return success;
    } catch (e, stackTrace) {
      await MmLogger.error(
        '[SubscriptionService.purchaseMonthlySubscription]: Failed to initiate purchase',
        e,
        stackTrace,
      );
      return false;
    }
  }

  /// Restore previous purchases.
  Future<void> restorePurchases() async {
    if (!_storeAvailable) {
      MmLogger.warning('[SubscriptionService.restorePurchases]: Store not available.');
      return;
    }

    try {
      await _inAppPurchase.restorePurchases();
    } catch (e, stackTrace) {
      await MmLogger.error('[SubscriptionService.restorePurchases]: Failed to restore', e, stackTrace);
    }
  }

  /// Check if user can create a game (premium only).
  bool canCreateGame() {
    return _currentStatus.isPremium;
  }

  /// Check if user can join another game.
  ///
  /// Free users can only participate in [SubscriptionConstants.freeUserMaxGameParticipation] games.
  bool canJoinGame(int currentGameCount) {
    if (_currentStatus.isPremium) {
      return true;
    }
    return currentGameCount < SubscriptionConstants.freeUserMaxGameParticipation;
  }

  /// Get the formatted price string.
  String get formattedPrice {
    if (_products.isNotEmpty) {
      final product = _products.firstWhere((p) => p.id == _monthlyProductId, orElse: () => _products.first);
      return product.price;
    }
    // Fallback price display
    return '\$${SubscriptionConstants.monthlyPriceUsd.toStringAsFixed(2)}/month';
  }

  /// Dispose the service.
  void dispose() {
    _purchaseSubscription?.cancel();
    _subscriptionStatusController.close();
  }
}
