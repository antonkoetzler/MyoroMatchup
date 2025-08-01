part of '../game_details_screen.dart';

/// Options button of [_AppBar].
final class _AppBarOptionsButton extends StatelessWidget {
  const _AppBarOptionsButton();

  @override
  Widget build(context) {
    final themeExtension = context.resolveThemeExtension<GameDetailsScreenThemeExtension>();

    // TODO
    return MyoroIconTextButton(
      configuration: MyoroIconTextButtonConfiguration(iconConfiguration: themeExtension.appBarOptionsIconConfiguration),
    );
  }
}
