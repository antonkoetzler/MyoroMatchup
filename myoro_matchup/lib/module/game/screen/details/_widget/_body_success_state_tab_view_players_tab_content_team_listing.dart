part of '../widget/game_details_screen.dart';

/// Team listing of [GameDetailsScreen].
final class _BodySuccessStateTabViewPlayersTabContentTeamListing extends StatelessWidget {
  /// Default constructor.
  const _BodySuccessStateTabViewPlayersTabContentTeamListing(this._team);

  /// Team.
  final GameTeamResponseDto _team;

  /// Build function.
  @override
  Widget build(context) {
    final themeExtension = context.resolveThemeExtension<GameDetailsScreenThemeExtension>();
    final bodySuccessStateTabViewPlayersTabContentTeamListingNameTextStyle =
        themeExtension.bodySuccessStateTabViewPlayersTabContentTeamListingNameTextStyle;

    final name = 'Team #${_team.index + 1}';
    final players = _team.players;
    final playersLength = players.length;

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(name, style: bodySuccessStateTabViewPlayersTabContentTeamListingNameTextStyle),
        Flexible(
          child: MyoroListScrollable(
            itemCount: playersLength,
            itemBuilder: (_, i) => _BodySuccessStateTabViewPlayersTabContentSuccessStateItem(players[i]),
          ),
        ),
      ],
    );
  }
}
