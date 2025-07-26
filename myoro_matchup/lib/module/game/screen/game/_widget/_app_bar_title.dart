part of '../game_screen.dart';

/// Title of [_AppBar].
final class _AppBarTitle extends StatelessWidget {
  const _AppBarTitle();

  @override
  Widget build(context) {
    final themeExtension = context.resolveThemeExtension<GameScreenThemeExtension>();
    return Text(context.localization.gameScreenAppBarTitle, style: themeExtension.appBarTitleTextStyle);
  }
}
