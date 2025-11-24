part of '../home_screen.dart';

/// Name of [_BodyUserSportStatsPlayerCard].
final class _BodyUserSportStatsPlayerCardName extends StatelessWidget {
  /// Default constructor.
  const _BodyUserSportStatsPlayerCardName(this._user);

  /// User.
  final UserResponseDto _user;

  /// Build function.
  @override
  Widget build(context) {
    final themeExtension = context.resolveThemeExtension<HomeScreenThemeExtension>();
    final bodyUserSportStatsPlayerCardNameTextStyle = themeExtension.bodyUserSportStatsPlayerCardNameTextStyle;
    // TODO: Investigate if it shrinks when a minWidth is added to the card or sum
    return FittedBox(
      fit: BoxFit.scaleDown,
      child: Text(_user.name, style: bodyUserSportStatsPlayerCardNameTextStyle),
    );
  }
}
