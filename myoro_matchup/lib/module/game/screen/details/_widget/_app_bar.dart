part of '../game_details_screen.dart';

/// App bar of [GameDetailsScreen].
final class _AppBar extends StatelessWidget implements PreferredSizeWidget {
  const _AppBar();

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(_) {
    return const MyoroAppBar(configuration: MyoroAppBarConfiguration(child: Text('Hello dude')));
  }
}
