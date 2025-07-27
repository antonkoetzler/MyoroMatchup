part of '../game_listing_screen.dart';

/// Menu button of [GameListingScreen].
final class _MenuButton extends StatelessWidget {
  const _MenuButton();

  @override
  Widget build(context) {
    final themeExtension = context.resolveThemeExtension<GameListingScreenThemeExtension>();

    // TODO
    return MyoroIconTextButton(
      configuration: MyoroIconTextButtonConfiguration(iconConfiguration: themeExtension.menuButtonIconConfiguration),
    );
  }
}
