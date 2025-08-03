part of '../game_details_screen.dart';

/// Success body of [GameDetailsScreen].
final class _BodySuccessState extends StatelessWidget {
  const _BodySuccessState(this._game);

  final Game _game;

  @override
  Widget build(_) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [GameCard(_game, displayDividerBetweenBannerAndInfoBar: true)],
    );
  }
}
