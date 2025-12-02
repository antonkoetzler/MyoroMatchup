part of '../home_screen.dart';

/// User game listing of [_Body].
///
/// TODO: Need to refresh the games when a new game is registered. Maybe use event_bus.
final class _BodyUserGameListing extends StatelessWidget {
  const _BodyUserGameListing();

  @override
  Widget build(context) {
    final viewModel = context.read<HomeScreenViewModel>();
    final fetchGames = viewModel.fetchGames;

    return MyoroRequestWidget<Set<GameResponseDto>>(
      request: fetchGames,
      successBuilder: (_, games) =>
          games!.isEmpty ? const _BodyUserGameListingEmptyFeedback() : _BodyUserGameListingListing(games),
    );
  }
}
