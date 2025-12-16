part of '../subscription_screen.dart';

/// Body of [SubscriptionScreen].
final class _Body extends StatelessWidget {
  const _Body();

  @override
  Widget build(context) {
    final subscriptionService = getIt<SubscriptionService>();

    return SingleChildScrollView(
      padding: const EdgeInsets.all(kEdgeInsetsLength),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // Header
          Text(
            localization.subscriptionScreenTitle,
            style: Theme.of(context).textTheme.headlineMedium,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: kMyoroMultiplier),
          Text(
            localization.subscriptionScreenSubtitle,
            style: Theme.of(context).textTheme.bodyLarge,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: kMyoroMultiplier * 3),

          // Price card
          _PriceCard(subscriptionService: subscriptionService),
          const SizedBox(height: kMyoroMultiplier * 3),

          // Features list
          Text(localization.subscriptionScreenFeaturesTitle, style: Theme.of(context).textTheme.titleLarge),
          const SizedBox(height: kMyoroMultiplier * 2),
          _FeatureItem(icon: Icons.add_circle_outline, text: localization.subscriptionScreenFeatureCreateGames),
          _FeatureItem(icon: Icons.all_inclusive, text: localization.subscriptionScreenFeatureUnlimitedGames),
          _FeatureItem(icon: Icons.star_outline, text: localization.subscriptionScreenFeaturePrioritySupport),
          const SizedBox(height: kMyoroMultiplier * 3),

          // Free tier info
          MyoroCard(
            style: const MyoroCardStyle(padding: EdgeInsets.all(kEdgeInsetsLength)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(localization.subscriptionScreenFreeTierTitle, style: Theme.of(context).textTheme.titleMedium),
                const SizedBox(height: kMyoroMultiplier),
                Text(
                  localization.subscriptionScreenFreeTierDescription(
                    SubscriptionConstants.freeUserMaxGameParticipation,
                  ),
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ],
            ),
          ),
          const SizedBox(height: kMyoroMultiplier * 3),

          // Subscribe button
          _SubscribeButton(subscriptionService: subscriptionService),
          const SizedBox(height: kMyoroMultiplier),

          // Restore purchases
          const _RestoreButton(),
          const SizedBox(height: kMyoroMultiplier * 3),

          // Legal links
          const _LegalLinks(),
        ],
      ),
    );
  }
}
