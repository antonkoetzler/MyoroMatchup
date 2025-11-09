part of '../game_card.dart';

/// Name of the [Game] of [GameCard].
final class _GameName extends StatelessWidget {
  const _GameName(this._game);

  final GameResponseDto _game;

  @override
  Widget build(context) {
    final themeExtension = context.resolveThemeExtension<GameCardThemeExtension>();

    return Text(_game.name, style: themeExtension.gameNameTextStyle);
  }
}
