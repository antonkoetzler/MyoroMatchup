part of '../widget/game_details_screen.dart';

/// Tab view of [GameDetailsScreen].
final class _BodySuccessStateTabView extends StatelessWidget {
  /// Default constructor.
  const _BodySuccessStateTabView(this._game);

  /// Game.
  final GameResponseDto _game;

  @override
  Widget build(_) {
    final gameDetailsScreenBodySuccessStateTabViewInfoTabText =
        localization.gameDetailsScreenBodySuccessStateTabViewInfoTabText;
    final gameDetailsScreenBodySuccessStateTabViewPlayersTabText =
        localization.gameDetailsScreenBodySuccessStateTabViewPlayersTabText;
    final gameDetailsScreenBodySuccessStateTabViewRankingsTabText =
        localization.gameDetailsScreenBodySuccessStateTabViewRankingsTabText;

    return MyoroTabView(
      tabs: [
        MyoroTabViewTab(
          text: gameDetailsScreenBodySuccessStateTabViewInfoTabText,
          content: _BodySuccessStateTabViewInfoTab(_game),
        ),
        MyoroTabViewTab(
          text: gameDetailsScreenBodySuccessStateTabViewPlayersTabText,
          content: const _BodySuccessStateTabViewPlayersTab(),
        ),
        MyoroTabViewTab(
          text: gameDetailsScreenBodySuccessStateTabViewRankingsTabText,
          content: const _BodySuccessStateTabViewRankingsTab(),
        ),
      ],
    );
  }
}
