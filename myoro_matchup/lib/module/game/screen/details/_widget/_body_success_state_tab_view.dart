part of '../game_details_screen.dart';

/// Tab view of [GameDetailsScreen].
final class _BodySuccessStateTabView extends StatelessWidget {
  const _BodySuccessStateTabView(this._game);

  // TODO
  // ignore: unused_field
  final Game _game;

  @override
  Widget build(_) {
    return MyoroTabView(
      tabs: [
        MyoroTabViewTab(text: localization.gameDetailsScreenBodySuccessStateTabViewInfoTabText, content: const _BodySuccessStateTabViewInfoTab()),
        MyoroTabViewTab(text: localization.gameDetailsScreenBodySuccessStateTabViewPlayersTabText, content: const _BodySuccessStateTabViewPlayersTab()),
        MyoroTabViewTab(text: localization.gameDetailsScreenBodySuccessStateTabViewRankingsTabText, content: const _BodySuccessStateTabViewRankingsTab()),
      ],
    );
  }
}
