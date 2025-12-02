part of '../widget/game_details_screen.dart';

/// Content of [GameDetailsScreen].
final class _BodySuccessStateTabViewPlayersTabContent extends StatelessWidget {
  /// Default constructor.
  const _BodySuccessStateTabViewPlayersTabContent();

  /// Build function.
  @override
  Widget build(context) {
    final viewModel = context.read<GameDetailsScreenViewModel>();
    final fetchPlayers = viewModel.fetchPlayers;

    return MyoroRequestWidget(
      request: fetchPlayers,
      successBuilder: (_, players) {
        return Column(
          children: [
            Expanded(
              child: MyoroListScrollableBuilder(
                itemCount: players!.length,
                itemBuilder: (_, i) => _BodySuccessStateTabViewPlayersTabContentSuccessStateItem(players[i]),
              ),
            ),
            Expanded(
              child: MyoroListScrollableBuilder(
                itemCount: players.length,
                itemBuilder: (_, i) => _BodySuccessStateTabViewPlayersTabContentSuccessStateItem(players[i]),
              ),
            ),
          ],
        );
      },
    );
  }
}
