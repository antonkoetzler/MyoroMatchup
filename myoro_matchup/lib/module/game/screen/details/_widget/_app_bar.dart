part of '../game_details_screen.dart';

/// App bar of [GameDetailsScreen].
final class _AppBar extends StatelessWidget implements PreferredSizeWidget {
  const _AppBar(this._game);

  final Game _game;

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(context) {
    return MmAppBar(
      configuration: MmAppBarConfiguration(title: _game.name, trailing: const _AppBarOptionsButton()),
    );
  }
}
