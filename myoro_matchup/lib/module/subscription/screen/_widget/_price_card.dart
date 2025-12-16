part of '../subscription_screen.dart';

/// Price card in [SubscriptionScreen].
final class _PriceCard extends StatelessWidget {
  const _PriceCard({required this.subscriptionService});

  final SubscriptionService subscriptionService;

  @override
  Widget build(context) {
    final colorScheme = Theme.of(context).colorScheme;

    return MyoroCard(
      style: const MyoroCardStyle(padding: EdgeInsets.all(kEdgeInsetsLength * 1.5)),
      child: Column(
        children: [
          Text(
            localization.subscriptionScreenPremiumLabel,
            style: Theme.of(
              context,
            ).textTheme.titleLarge?.copyWith(color: colorScheme.primary, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: kMyoroMultiplier),
          Text(
            subscriptionService.formattedPrice,
            style: Theme.of(context).textTheme.headlineLarge?.copyWith(fontWeight: FontWeight.bold),
          ),
          Text(
            localization.subscriptionScreenPerMonth,
            style: Theme.of(
              context,
            ).textTheme.bodyMedium?.copyWith(color: colorScheme.onSurface.withValues(alpha: 0.7)),
          ),
        ],
      ),
    );
  }
}
