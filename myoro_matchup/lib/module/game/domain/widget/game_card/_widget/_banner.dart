part of '../game_card.dart';

/// Banner of [GameCard].
final class _Banner extends StatelessWidget {
  const _Banner(this._game);

  final GameResponseDto _game;

  @override
  Widget build(context) {
    final themeExtension = context.resolveThemeExtension<GameCardThemeExtension>();
    final bannerDecoration = themeExtension.bannerDecoration;
    final bannerlessGameContentPadding = themeExtension.bannerlessGameContentPadding;

    final banner = _game.banner;
    final bannerIsNotEmpty = banner.isNotEmpty;

    return SizedBox(
      height: themeExtension.bannerMaxHeight,
      width: double.infinity,
      child: Stack(
        fit: StackFit.expand,
        children: [
          Padding(
            padding: bannerIsNotEmpty ? EdgeInsets.zero : bannerlessGameContentPadding,
            child: MyoroImage(path: bannerIsNotEmpty ? banner : MmImages.svgs.logo, fit: BoxFit.contain),
          ),
          Container(decoration: bannerDecoration),
        ],
      ),
    );
  }
}
