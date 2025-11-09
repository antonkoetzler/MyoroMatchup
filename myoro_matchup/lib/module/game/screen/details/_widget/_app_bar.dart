part of '../game_details_screen.dart';

/// App bar of [GameDetailsScreen].
final class _AppBar extends MmAppBar {
  const _AppBar(this._game) : super();

  final GameResponseDto _game;

  @override
  Widget build(context) {
    return MmAppBar(title: _game.name);
  }
}
