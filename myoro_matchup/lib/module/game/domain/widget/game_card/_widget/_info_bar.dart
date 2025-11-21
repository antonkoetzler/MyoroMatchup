part of '../game_card.dart';

/// Info bar of [GameCard].
final class _InfoBar extends StatelessWidget {
  const _InfoBar(this._game);

  final GameResponseDto _game;

  @override
  Widget build(context) {
    final themeExtension = context.resolveThemeExtension<GameCardThemeExtension>();
    final infoBarSpacing = themeExtension.infoBarSpacing;
    final infoBarPadding = themeExtension.infoBarPadding;

    return Padding(
      padding: infoBarPadding,
      child: Row(
        spacing: infoBarSpacing,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Flexible(
            child: Row(
              spacing: infoBarSpacing,
              mainAxisSize: MainAxisSize.min,
              children: [
                _ProfilePicture(_game),
                Flexible(child: _GameName(_game)),
              ],
            ),
          ),
          _SportName(_game),
        ],
      ),
    );
  }
}
