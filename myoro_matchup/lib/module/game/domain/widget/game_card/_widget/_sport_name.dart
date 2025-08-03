part of '../game_card.dart';

/// Name of a [Game]'s sport in [GameCard].
final class _SportName extends StatelessWidget {
  const _SportName(this._game);

  final Game _game;

  @override
  Widget build(context) {
    final themeExtension = context.resolveThemeExtension<GameCardThemeExtension>();
    return Text(_game.sport.name, style: themeExtension.sportNameTextStyle);
  }
}
