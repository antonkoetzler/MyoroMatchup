part of '../home_screen.dart';

/// Game listing of [_BodyUserGameListing].
final class _BodyUserGameListingListing extends StatelessWidget {
  const _BodyUserGameListingListing(this._games);

  /// The fetched [GameResponseDto]s.
  final Set<GameResponseDto> _games;

  @override
  Widget build(context) {
    return MyoroListScrollableBuilder(
      itemCount: _games.length,
      itemBuilder: (_, index) => _Game(index == 0, _games.elementAt(index)),
    );
  }
}
