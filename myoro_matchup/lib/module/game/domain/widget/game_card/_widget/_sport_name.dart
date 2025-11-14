part of '../game_card.dart';

/// Name of a [Game]'s sport in [GameCard].
final class _SportName extends StatelessWidget {
  const _SportName(this._game);

  final GameResponseDto _game;

  @override
  Widget build(context) {
    final themeExtension = context.resolveThemeExtension<GameCardThemeExtension>();
    final sportNameTextStyle = themeExtension.sportNameTextStyle;

    final sport = _game.sport;
    final formattedName = sport.formattedName;

    return Text(formattedName, style: sportNameTextStyle);
  }
}
