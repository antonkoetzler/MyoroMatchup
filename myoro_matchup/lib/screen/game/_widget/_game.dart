part of '../game_screen.dart';

/// Item of [_BodySuccessState].
final class _Game extends StatelessWidget {
  const _Game(this._isFirstGame, this._game);

  final bool _isFirstGame;
  final Game _game;

  @override
  Widget build(context) {
    final themeExtension = context.resolveThemeExtension<GameScreenThemeExtension>();

    return Padding(
      padding: themeExtension.gameMargin.copyWith(top: _isFirstGame ? themeExtension.gameMargin.bottom : null),
      child: MyoroCard(
        configuration: MyoroCardConfiguration(
          child: Column(
            spacing: themeExtension.gameSpacing,
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                height: themeExtension.gameBannerMaxHeight,
                child: _game.banner != null ? Image.asset(_game.banner!) : Container(color: Colors.red),
              ),
              Row(
                spacing: themeExtension.gameSpacing,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    child: Row(
                      spacing: themeExtension.gameSpacing,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        if (_game.profilePicture != null) ...[
                          Image.asset(
                            _game.profilePicture!,
                            width: themeExtension.gameProfilePictureSize,
                            fit: BoxFit.contain,
                          ),
                        ],
                        Flexible(child: Text(_game.name, style: themeExtension.gameNameTextStyle)),
                      ],
                    ),
                  ),
                  Text(_game.sport.name, style: themeExtension.gameSportNameTextStyle),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
