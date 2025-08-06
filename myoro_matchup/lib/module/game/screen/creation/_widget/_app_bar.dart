part of '../game_creation_screen.dart';

/// App bar of [GameCreationScreen].
final class _AppBar extends StatelessWidget implements PreferredSizeWidget {
  const _AppBar();

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(_) {
    return MmAppBar(
      configuration: MmAppBarConfiguration(
        title: localization.gameCreationScreenAppBarTitle,
        trailing: const Text('SOON'),
      ),
    );
  }
}
