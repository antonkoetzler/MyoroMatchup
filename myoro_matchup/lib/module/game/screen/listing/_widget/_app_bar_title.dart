part of '../game_listing_screen.dart';

/// Title of [_AppBar].
final class _AppBarTitle extends StatelessWidget {
  const _AppBarTitle();

  @override
  Widget build(context) {
    final themeExtension = context.resolveThemeExtension<GameListingScreenThemeExtension>();
    return Text(localization.gameListingScreenAppBarTitle, style: themeExtension.appBarTitleTextStyle);
  }
}
