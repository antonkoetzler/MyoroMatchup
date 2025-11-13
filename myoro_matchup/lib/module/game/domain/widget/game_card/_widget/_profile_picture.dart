part of '../game_card.dart';

/// Profile picture of [GameCard].
final class _ProfilePicture extends StatelessWidget {
  const _ProfilePicture(this._game);

  final GameResponseDto _game;

  @override
  Widget build(context) {
    final themeExtension = context.resolveThemeExtension<GameCardThemeExtension>();
    final profilePictureBorderRadius = themeExtension.profilePictureBorderRadius;

    final profilePicture = _game.profilePicture;

    return Container(
      decoration: BoxDecoration(border: themeExtension.profilePictureBorder, borderRadius: themeExtension.profilePictureBorderRadius),
      child: ClipRRect(
        borderRadius: profilePictureBorderRadius,
        child: Image.asset(
          profilePicture.isNotEmpty ? profilePicture : LOGO HERE,
          width: themeExtension.profilePictureSize,
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
