part of '../widget/game_details_screen.dart';

/// Item of [_BodySuccessStateTabViewPlayersTabContentSuccessState].
final class _BodySuccessStateTabViewPlayersTabContentSuccessStateItem extends StatelessWidget {
  /// Default constructor.
  const _BodySuccessStateTabViewPlayersTabContentSuccessStateItem(this._player);

  /// Player.
  final GamePlayerResponseDto _player;

  /// Build function.
  @override
  Widget build(context) {
    final name = _player.name;
    final username = _player.username;

    return MyoroButton(
      onTapUp: (_, _) => _PlayerDetailsBottomSheet.show(context, _player),
      builder: (_, tapStatus) {
        return Row(
          children: [
            // TODO
            const Icon(Icons.abc, size: 30),
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text(name), Text(username)]),
          ],
        );
      },
    );
  }
}
