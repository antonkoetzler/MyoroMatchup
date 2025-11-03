part of '../game_listing_screen.dart';

/// Profile button of [GameListingScreen].
final class _ProfileButton extends StatelessWidget {
  const _ProfileButton();

  @override
  Widget build(context) {
    final themeExtension = context.resolveThemeExtension<GameListingScreenThemeExtension>();

    // TODO
    return MyoroIconTextButton(iconConfiguration: themeExtension.profileButtonIconConfiguration);
  }
}
