part of '../game_details_screen.dart';

/// App bar of [GameDetailsScreen].
final class _AppBar extends MmAppBar {
  const _AppBar(this._game)
    : super(
        configuration: const MmAppBarConfiguration(title: '', trailing: _AppBarOptionsButton()),
      );

  final Game _game;

  @override
  Widget build(context) {
    return MmAppBar(
      configuration: MmAppBarConfiguration(title: _game.name, trailing: const _AppBarOptionsButton()),
    );
  }
}
