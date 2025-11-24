part of '../home_screen.dart';

/// Item of [_BodyUserGameListingListing].
final class _Game extends StatelessWidget {
  /// Default constructor.
  const _Game(this._isFirstGame, this._game);

  /// If the game is the first game.
  final bool _isFirstGame;

  /// Game.
  final GameResponseDto _game;

  @override
  Widget build(context) {
    final themeExtension = context.resolveThemeExtension<HomeScreenThemeExtension>();
    final gameMargin = themeExtension.gameMargin.copyWith(top: _isFirstGame ? themeExtension.gameMargin.bottom : null);

    return Padding(
      padding: gameMargin,
      child: MyoroButton(
        style: MyoroButtonStyle(borderRadius: themeExtension.gameBorderRadius).bordered(context),
        onTapUp: (_, _) => AppRouter.push(Routes.gameRoutes.gameDetailsScreen.navigate(_game.id)),
        builder: (_, _) => GameCard(_game),
      ),
    );
  }
}
