part of '../game_card.dart';

/// Info bar of [GameCard].
final class _InfoBar extends StatelessWidget {
  const _InfoBar(this._game);

  final Game _game;

  @override
  Widget build(context) {
    final themeExtension = context.resolveThemeExtension<GameCardThemeExtension>();

    return Padding(
      padding: themeExtension.infoBarPadding,
      child: Row(
        spacing: themeExtension.infoBarSpacing,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Flexible(
            child: Row(
              spacing: themeExtension.infoBarSpacing,
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
