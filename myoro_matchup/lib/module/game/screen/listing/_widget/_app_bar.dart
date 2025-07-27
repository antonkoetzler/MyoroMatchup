part of '../game_listing_screen.dart';

/// [MyoroAppBar] of [GameListingScreen].
final class _AppBar extends StatelessWidget implements PreferredSizeWidget {
  const _AppBar();

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(_) {
    return const MyoroAppBar(
      configuration: MyoroAppBarConfiguration(
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [_AppBarTitle(), _MenuButton()]),
        bordered: true,
      ),
    );
  }
}
