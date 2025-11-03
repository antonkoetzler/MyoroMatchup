part of '../game_listing_screen.dart';

/// New game button of [GameListingScreen].
final class _NewGameButton extends StatelessWidget {
  const _NewGameButton();

  @override
  Widget build(context) {
    final themeExtension = context.resolveThemeExtension<GameListingScreenThemeExtension>();

    return IntrinsicWidth(
      child: MyoroIconTextButton(
        style: MyoroIconTextButtonStyle(
          borderRadius: themeExtension.newGameButtonBorderRadius,
          spacing: themeExtension.newGameButtonSpacing,
        ).secondary(context),
        iconConfiguration: themeExtension.newGameButtonIconConfiguration,
        textConfiguration: MyoroTextConfiguration(text: localization.gameListingScreenNewGameButtonText, style: themeExtension.newGameButtonTextStyle),
        onTapUp: (_) => AppRouter.push(GameCreationScreenRoute().navigate()),
      ),
    );
  }
}
