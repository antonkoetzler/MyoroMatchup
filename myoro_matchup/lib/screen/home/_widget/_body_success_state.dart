part of '../home_screen.dart';

/// [MyoroRequestEnum.success] state of [_Body].
final class _BodySuccessState extends StatelessWidget {
  const _BodySuccessState(this._games);

  /// The fetched [Game]s.
  final Set<Game> _games;

  @override
  Widget build(_) {
    return Text('Hewwo uwu, there were ${_games.length} games fetched.');
  }
}
