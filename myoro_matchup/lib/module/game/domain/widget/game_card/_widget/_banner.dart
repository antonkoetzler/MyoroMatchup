part of '../game_card.dart';

/// Banner of [GameCard].
final class _Banner extends StatelessWidget {
  const _Banner(this._game);

  final GameResponseDto _game;

  @override
  Widget build(context) {
    final themeExtension = context.resolveThemeExtension<GameCardThemeExtension>();
    final bannerDecoration = themeExtension.bannerDecoration;

    final banner = _game.banner;

    return SizedBox(
      height: themeExtension.bannerMaxHeight,
      width: double.infinity,
      child: Stack(
        fit: StackFit.expand,
        children: [
          banner.isNotEmpty ? Image.asset(banner, fit: BoxFit.cover) : Container(color: MyoroColors.transparent),
          Container(decoration: bannerDecoration),
        ],
      ),
    );
  }
}
