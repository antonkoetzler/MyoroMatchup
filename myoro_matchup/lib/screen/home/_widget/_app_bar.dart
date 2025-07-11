part of '../home_screen.dart';

/// [MyoroAppBar] of [HomeScreen].
final class _AppBar extends StatelessWidget implements PreferredSizeWidget {
  const _AppBar();

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(_) {
    return const MyoroAppBar(configuration: MyoroAppBarConfiguration(child: Text('MyoroMatchup')));
  }
}
