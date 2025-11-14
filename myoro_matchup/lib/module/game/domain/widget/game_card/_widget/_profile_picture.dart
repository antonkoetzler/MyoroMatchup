part of '../game_card.dart';

/// Profile picture of [GameCard].
final class _ProfilePicture extends StatelessWidget {
  const _ProfilePicture(this._game);

  final GameResponseDto _game;

  @override
  Widget build(context) {
    final themeExtension = context.resolveThemeExtension<GameCardThemeExtension>();
    final profilePictureBorderRadius = themeExtension.profilePictureBorderRadius;
    final profilePictureSize = themeExtension.profilePictureSize;
    final logoPadding = themeExtension.logoPadding;
    final logoSize = themeExtension.logoSize;

    final profilePicture = _game.profilePicture;

    final assetPath = profilePicture.isNotEmpty ? profilePicture : MmImages.svgs.logo;

    return Container(
      decoration: BoxDecoration(
        border: themeExtension.profilePictureBorder,
        borderRadius: themeExtension.profilePictureBorderRadius,
      ),
      child: ClipRRect(
        borderRadius: profilePictureBorderRadius,
        child: Padding(
          padding: logoPadding,
          child: MyoroImage(
            path: assetPath,
            width: profilePicture.isNotEmpty ? profilePictureSize : logoSize,
            fit: BoxFit.contain,
          ),
        ),
      ),
    );
  }
}
