part of '../game_listing_screen.dart';

/// [MyoroAppBar] of [GameListingScreen].
final class _AppBar extends StatelessWidget implements PreferredSizeWidget {
  const _AppBar();

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(context) {
    return MmAppBar(
      configuration: MmAppBarConfiguration(
        title: localization.gameListingScreenAppBarTitle,
        trailing: const _ProfileButton(),
      ),
    );
  }
}
