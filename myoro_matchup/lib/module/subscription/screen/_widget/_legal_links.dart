part of '../subscription_screen.dart';

/// Legal links in [SubscriptionScreen].
final class _LegalLinks extends StatelessWidget {
  const _LegalLinks();

  @override
  Widget build(context) {
    return Column(
      children: [
        TextButton(
          onPressed: () => myoroLaunchUrl(SubscriptionConstants.privacyPolicyUrl),
          child: Text(localization.subscriptionScreenPrivacyPolicy),
        ),
        TextButton(
          onPressed: () => myoroLaunchUrl(SubscriptionConstants.termsOfServiceUrl),
          child: Text(localization.subscriptionScreenTermsOfService),
        ),
      ],
    );
  }
}
