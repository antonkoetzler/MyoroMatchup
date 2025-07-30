part of '../game_listing_screen.dart';

/// Item of [_BodySuccessState].
final class _Game extends StatelessWidget {
  const _Game(this._isFirstGame, this._game);

  final bool _isFirstGame;
  final Game _game;

  @override
  Widget build(context) {
    final themeExtension = context.resolveThemeExtension<GameListingScreenThemeExtension>();

    return Padding(
      padding: themeExtension.gameMargin.copyWith(top: _isFirstGame ? themeExtension.gameMargin.bottom : null),
      child: MyoroButton(
        configuration: MyoroButtonConfiguration(
          borderRadius: themeExtension.gameBorderRadius,
          borderBuilder: (_) => MyoroButtonStyleEnum.border(context),
          onTapUp: (_) => AppRouter.push(Routes.gameRoutes.gameDetailsScreen.navigate(_game.id)),
        ),
        builder: (_, _) {
          return Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                height: themeExtension.gameBannerMaxHeight,
                width: double.infinity,
                child: _game.banner != null
                    ? Image.asset(_game.banner!, fit: BoxFit.cover)
                    // TODO
                    : Container(color: Colors.pink.shade200),
              ),
              Padding(
                padding: themeExtension.gameInfoBarPadding,
                child: Row(
                  spacing: themeExtension.gameSpacing,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(
                      child: Row(
                        spacing: themeExtension.gameSpacing,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              border: MyoroButtonStyleEnum.border(context),
                              borderRadius: themeExtension.gameBorderRadius,
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(
                                  (themeExtension.gameBorderRadius.topLeft.x - 2).clamp(0.0, double.infinity),
                                ),
                                topRight: Radius.circular(
                                  (themeExtension.gameBorderRadius.topRight.x - 2).clamp(0.0, double.infinity),
                                ),
                                bottomLeft: Radius.circular(
                                  (themeExtension.gameBorderRadius.bottomLeft.x - 2).clamp(0.0, double.infinity),
                                ),
                                bottomRight: Radius.circular(
                                  (themeExtension.gameBorderRadius.bottomRight.x - 2).clamp(0.0, double.infinity),
                                ),
                              ),
                              child: _game.profilePicture != null
                                  ? Image.asset(
                                      _game.profilePicture!,
                                      width: themeExtension.gameProfilePictureSize,
                                      fit: BoxFit.contain,
                                    )
                                  // TODO
                                  : Container(
                                      width: themeExtension.gameProfilePictureSize,
                                      height: themeExtension.gameProfilePictureSize,
                                      color: Colors.pink.shade200,
                                    ),
                            ),
                          ),
                          Flexible(child: Text(_game.name, style: themeExtension.gameNameTextStyle)),
                        ],
                      ),
                    ),
                    Text(_game.sport.name, style: themeExtension.gameSportNameTextStyle),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
