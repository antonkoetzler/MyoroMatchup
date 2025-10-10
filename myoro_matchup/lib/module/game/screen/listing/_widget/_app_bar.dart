part of '../game_listing_screen.dart';

/// [MyoroAppBar] of [GameListingScreen].
final class _AppBar extends MmAppBar {
  _AppBar()
    : super(
        configuration: MmAppBarConfiguration(
          title: localization.gameListingScreenAppBarTitle,
          trailing: const _ProfileButton(),
        ),
      );
}
