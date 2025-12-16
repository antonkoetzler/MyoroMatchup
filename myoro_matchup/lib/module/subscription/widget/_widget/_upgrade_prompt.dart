part of '../premium_gate_widget.dart';

/// Upgrade prompt shown when user is not premium.
final class _UpgradePrompt extends StatelessWidget {
  const _UpgradePrompt({this.featureName});

  final String? featureName;

  @override
  Widget build(context) {
    final themeExtension = context.resolveThemeExtension<PremiumGateWidgetThemeExtension>();

    return MyoroCard(
      style: themeExtension.cardStyle,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(Icons.workspace_premium, size: themeExtension.cardIconSize, color: themeExtension.iconColor),
          SizedBox(height: themeExtension.cardTitleSpacing),
          Text(
            localization.premiumGateTitleText,
            style: themeExtension.cardTitleTextStyle,
            textAlign: TextAlign.center,
          ),
          SizedBox(height: themeExtension.cardDescriptionSpacing),
          Text(
            featureName != null
                ? localization.premiumGateFeatureDescription(featureName!)
                : localization.premiumGateDescription,
            style: themeExtension.cardDescriptionTextStyle,
            textAlign: TextAlign.center,
          ),
          SizedBox(height: themeExtension.cardButtonSpacing),
          MyoroIconTextButton(
            text: localization.premiumGateUpgradeButton,
            onTapUp: (_, _) => MmRoutes.subscriptionRoutes.subscriptionScreen.push(),
          ),
        ],
      ),
    );
  }
}
