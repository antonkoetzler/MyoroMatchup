part of '../widget/game_details_screen.dart';

/// Content of [GameDetailsScreen].
final class _BodySuccessStateTabViewPlayersTabContent extends StatelessWidget {
  /// Default constructor.
  const _BodySuccessStateTabViewPlayersTabContent();

  /// Build function.
  @override
  Widget build(context) {
    final viewModel = context.read<GameDetailsScreenViewModel>();
    final fetchTeams = viewModel.fetchTeams;

    return MyoroRequestWidget(
      request: fetchTeams,
      successBuilder: (_, teams) {
        return MyoroListScrollable(
          itemCount: teams!.length,
          itemBuilder: (_, i) => _BodySuccessStateTabViewPlayersTabContentTeamListing(teams[i]),
        );
      },
    );
  }
}
