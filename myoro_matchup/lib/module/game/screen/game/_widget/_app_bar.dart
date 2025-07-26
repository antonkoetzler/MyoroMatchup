part of '../game_screen.dart';

/// [MyoroAppBar] of [GameScreen].
final class _AppBar extends StatelessWidget implements PreferredSizeWidget {
  const _AppBar();

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(_) {
    // TODO: Localization.
    return const MyoroAppBar(
      configuration: MyoroAppBarConfiguration(child: Row(children: [_AppBarTitle()]), bordered: true),
    );
  }
}
