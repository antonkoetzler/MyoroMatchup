part of '../game_screen.dart';

/// Item of [_BodySuccessState].
final class _Game extends StatelessWidget {
  const _Game(this._game);

  final Game _game;

  @override
  Widget build(context) {
    final themeExtension = context.resolveThemeExtension<GameScreenThemeExtension>();

    return MyoroCard(
      configuration: MyoroCardConfiguration(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (_game.banner != null)
              Image.asset(_game.banner!)
            else
              Container(width: 50, height: 50, color: Colors.red),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      if (_game.profilePicture != null) Image.asset(_game.profilePicture!),
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
    );
  }
}
