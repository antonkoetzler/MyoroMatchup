import 'package:myoro_matchup/myoro_matchup.dart';

/// Routes for subscription module.
final class SubscriptionRoutes extends RouteRepository {
  /// Default constructor.
  SubscriptionRoutes(String rootLocation)
    : _subscriptionScreen = SubscriptionScreenRoute(rootLocation),
      super(rootLocation: rootLocation);

  /// Subscription screen route.
  final SubscriptionScreenRoute _subscriptionScreen;

  /// [_subscriptionScreen] getter.
  SubscriptionScreenRoute get subscriptionScreen => _subscriptionScreen;
}

/// Route for [SubscriptionScreen].
final class SubscriptionScreenRoute extends NoPayloadRoute {
  SubscriptionScreenRoute(String parentDirectory)
    : super(parentDirectory: parentDirectory, name: 'screen', child: const SubscriptionScreen());

  /// Push the subscription screen.
  void push() {
    MmRouter.push(navigate());
  }
}
