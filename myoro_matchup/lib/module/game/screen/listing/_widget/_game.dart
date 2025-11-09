part of '../game_listing_screen.dart';

/// Item of [_BodySuccessState].
final class _Game extends StatelessWidget {
  const _Game(this._isFirstGame, this._game);

  final bool _isFirstGame;
  final GameResponseDto _game;

  @override
  Widget build(context) {
    final themeExtension = context.resolveThemeExtension<GameListingScreenThemeExtension>();

    return Padding(
      padding: themeExtension.gameMargin.copyWith(top: _isFirstGame ? themeExtension.gameMargin.bottom : null),
      child: MyoroButton(
        style: MyoroButtonStyle(borderRadius: themeExtension.gameBorderRadius).bordered(context),
        onTapUp: (_) => AppRouter.push(Routes.gameRoutes.gameDetailsScreen.navigate(_game.id)),
        builder: (_, _) => GameCard(_game),
      ),
    );
  }
}
