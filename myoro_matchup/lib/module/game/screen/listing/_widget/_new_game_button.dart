part of '../game_listing_screen.dart';

/// New game button of [GameListingScreen].
final class _NewGameButton extends StatelessWidget {
  const _NewGameButton();

  @override
  Widget build(context) {
    final themeExtension = context.resolveThemeExtension<GameListingScreenThemeExtension>();

    // TODO
    return IntrinsicWidth(
      child: MyoroIconTextButton(
        configuration: MyoroIconTextButtonConfiguration(
          iconConfiguration: themeExtension.newGameButtonIconConfiguration,
          textConfiguration: MyoroTextConfiguration(
            text: localization.gameListingScreenNewGameButtonText,
            style: themeExtension.newGameButtonTextStyle,
          ),
          borderRadius: themeExtension.newGameButtonBorderRadius,
          borderBuilder: (_) => MyoroButtonStyleEnum.border(context),
          spacing: themeExtension.newGameButtonSpacing,
        ),
      ),
    );
  }
}
