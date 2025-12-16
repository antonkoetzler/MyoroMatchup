import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:myoro_matchup/myoro_matchup.dart';

part '_widget/_upgrade_prompt.dart';

/// Widget that gates premium-only features.
///
/// Shows a prompt to subscribe if the user is not premium.
final class PremiumGateWidget extends StatelessWidget {
  /// Shows a bottom sheet explaining that this feature requires premium.
  static void show(BuildContext context, {String? featureName}) {
    final themeExtension = context.resolveThemeExtension<PremiumGateWidgetThemeExtension>();

    MyoroModal.show(
      context,
      showCloseButton: false,
      isBottomSheet: true,
      child: Padding(
        padding: themeExtension.bottomSheetPadding,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(Icons.workspace_premium, size: themeExtension.iconSize, color: themeExtension.iconColor),
            SizedBox(height: themeExtension.titleSpacing),
            Text(localization.premiumGateTitleText, style: themeExtension.titleTextStyle, textAlign: TextAlign.center),
            SizedBox(height: themeExtension.descriptionSpacing),
            Text(
              featureName != null
                  ? localization.premiumGateFeatureDescription(featureName)
                  : localization.premiumGateDescription,
              style: themeExtension.descriptionTextStyle,
              textAlign: TextAlign.center,
            ),
            SizedBox(height: themeExtension.buttonSpacing),
            MyoroIconTextButton(
              text: localization.premiumGateUpgradeButton,
              onTapUp: (_, _) {
                MmRouter.pop();
                MmRoutes.subscriptionRoutes.subscriptionScreen.push();
              },
            ),
            SizedBox(height: themeExtension.cancelButtonSpacing),
            TextButton(onPressed: MmRouter.pop, child: Text(localization.premiumGateCancelButton)),
          ],
        ),
      ),
    );
  }

  /// Checks if user can perform action, shows premium prompt if not.
  ///
  /// Returns true if user can proceed, false if blocked.
  static bool checkAndPrompt(BuildContext context, {String? featureName}) {
    final subscriptionService = getIt<SubscriptionService>();
    if (subscriptionService.currentStatus.isPremium) {
      return true;
    }
    show(context, featureName: featureName);
    return false;
  }

  /// Default constructor.
  const PremiumGateWidget({super.key, required this.child, this.featureName});

  /// The widget to display if the user is premium.
  final Widget child;

  /// Name of the feature being gated (for the prompt).
  final String? featureName;

  @override
  Widget build(context) {
    final subscriptionService = getIt<SubscriptionService>();

    if (subscriptionService.currentStatus.isPremium) {
      return child;
    }

    return _UpgradePrompt(featureName: featureName);
  }
}
