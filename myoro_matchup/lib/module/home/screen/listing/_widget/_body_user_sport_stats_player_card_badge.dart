part of '../home_screen.dart';

/// Badge of [_BodyUserSportStatsPlayerCard].
final class _BodyUserSportStatsPlayerCardBadge extends StatelessWidget {
  /// Default constructor.
  const _BodyUserSportStatsPlayerCardBadge(this._text);

  /// Text.
  final String _text;

  /// Build function.
  @override
  Widget build(context) {
    final themeExtension = context.resolveThemeExtension<HomeScreenThemeExtension>();
    final bodyUserSportStatsPlayerCardBadgeTextStyle = themeExtension.bodyUserSportStatsPlayerCardBadgeTextStyle;
    final bodyUserSportStatsPlayerCardBadgeDecoration = themeExtension.bodyUserSportStatsPlayerCardBadgeDecoration;
    final bodyUserSportStatsPlayerCardBadgePadding = themeExtension.bodyUserSportStatsPlayerCardBadgePadding;
    return Container(
      decoration: bodyUserSportStatsPlayerCardBadgeDecoration,
      padding: bodyUserSportStatsPlayerCardBadgePadding,
      child: Text(_text, textAlign: TextAlign.center, style: bodyUserSportStatsPlayerCardBadgeTextStyle),
    );
  }
}
