part of '../home_screen.dart';

/// Stats of [_BodyUserSportStats].
final class _BodyUserSportStatsStats extends StatelessWidget {
  /// Default constructor.
  const _BodyUserSportStatsStats(this._statsItems);

  /// Stats items.
  final List<({String label, int value})> _statsItems;

  /// Build function.
  @override
  Widget build(context) {
    final themeExtension = context.resolveThemeExtension<HomeScreenThemeExtension>();
    final bodyUserSportStatsStatsSpacing = themeExtension.bodyUserSportStatsStatsSpacing;

    return Row(
      spacing: bodyUserSportStatsStatsSpacing,
      children: _statsItems.map((item) => _BodyUserSportStatsStatsItem(item.label, item.value)).toList(),
    );
  }
}
