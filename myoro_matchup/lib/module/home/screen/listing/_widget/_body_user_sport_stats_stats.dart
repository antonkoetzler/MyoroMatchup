part of '../home_screen.dart';

/// Stats of [_BodyUserSportStats].
final class _BodyUserSportStatsStats extends StatelessWidget {
  /// Default constructor.
  const _BodyUserSportStatsStats(this._user, this._selectedSportStats, this._statsItems);

  /// User.
  final UserResponseDto _user;

  /// Selected sport stats.
  final UserStatsResponseDto _selectedSportStats;

  /// Stats items.
  final List<({String label, int value})> _statsItems;

  /// Build function.
  @override
  Widget build(context) {
    final themeExtension = context.resolveThemeExtension<HomeScreenThemeExtension>();
    final bodyUserSportStatsStatsSpacing = themeExtension.bodyUserSportStatsStatsSpacing;
    final bodyUserSportStatsStatsDividerMargin = themeExtension.bodyUserSportStatsStatsDividerMargin;

    return IntrinsicHeight(
      child: Row(
        spacing: bodyUserSportStatsStatsSpacing,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            spacing: bodyUserSportStatsStatsSpacing,
            children: [
              IntrinsicWidth(child: _BodyUserSportStatsPlayerCardBadge(_user.location.country.emoji)),
              IntrinsicWidth(child: _BodyUserSportStatsPlayerCardBadge(_selectedSportStats.rating.toString())),
            ],
          ),
          Padding(padding: bodyUserSportStatsStatsDividerMargin, child: const MyoroBasicDivider(Axis.vertical)),
          Expanded(
            child: Row(
              spacing: bodyUserSportStatsStatsSpacing,
              children: _statsItems
                  .map((item) => Expanded(child: _BodyUserSportStatsStatsItem(item.label, item.value)))
                  .toList(),
            ),
          ),
        ],
      ),
    );
  }
}
