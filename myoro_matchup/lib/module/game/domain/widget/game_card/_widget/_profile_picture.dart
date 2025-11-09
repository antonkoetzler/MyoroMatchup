part of '../game_card.dart';

/// Profile picture of [GameCard].
final class _ProfilePicture extends StatelessWidget {
  const _ProfilePicture(this._game);

  final GameResponseDto _game;

  @override
  Widget build(context) {
    final themeExtension = context.resolveThemeExtension<GameCardThemeExtension>();

    return Container(
      decoration: BoxDecoration(
        border: themeExtension.profilePictureBorder,
        borderRadius: themeExtension.profilePictureBorderRadius,
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(
            (themeExtension.profilePictureBorderRadius.topLeft.x - 2).clamp(0.0, double.infinity),
          ),
          topRight: Radius.circular(
            (themeExtension.profilePictureBorderRadius.topRight.x - 2).clamp(0.0, double.infinity),
          ),
          bottomLeft: Radius.circular(
            (themeExtension.profilePictureBorderRadius.bottomLeft.x - 2).clamp(0.0, double.infinity),
          ),
          bottomRight: Radius.circular(
            (themeExtension.profilePictureBorderRadius.bottomRight.x - 2).clamp(0.0, double.infinity),
          ),
        ),
        child: _game.profilePicture != null
            ? Image.asset(_game.profilePicture!, width: themeExtension.profilePictureSize, fit: BoxFit.contain)
            // TODO
            : Container(
                width: themeExtension.profilePictureSize,
                height: themeExtension.profilePictureSize,
                color: Colors.pink.shade200,
              ),
      ),
    );
  }
}
