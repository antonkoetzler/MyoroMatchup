part of '../game_card.dart';

/// Banner of [GameCard].
final class _Banner extends StatelessWidget {
  const _Banner(this._game);

  final Game _game;

  @override
  Widget build(context) {
    final themeExtension = context.resolveThemeExtension<GameCardThemeExtension>();

    return SizedBox(
      height: themeExtension.bannerMaxHeight,
      width: double.infinity,
      child: _game.banner != null
          ? Image.asset(_game.banner!, fit: BoxFit.cover)
          // TODO
          : Container(color: Colors.pink.shade200),
    );
  }
}
