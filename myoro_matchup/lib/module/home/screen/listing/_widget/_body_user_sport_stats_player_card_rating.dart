part of '../home_screen.dart';

/// Rating of [_BodyUserSportStatsPlayerCard].
final class _BodyUserSportStatsPlayerCardRating extends StatelessWidget {
  /// Default constructor.
  const _BodyUserSportStatsPlayerCardRating(this._stats);

  /// Stats.
  final UserStatsResponseDto _stats;

  /// Build function.
  @override
  Widget build(context) {
    final themeExtension = context.resolveThemeExtension<HomeScreenThemeExtension>();
    final bodyUserSportStatsPlayerCardRatingTextStyle = themeExtension.bodyUserSportStatsPlayerCardRatingTextStyle;
    final rating = _stats.rating;
    return Text('$rating', style: bodyUserSportStatsPlayerCardRatingTextStyle);
  }
}
