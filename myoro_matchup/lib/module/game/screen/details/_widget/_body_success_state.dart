part of '../widget/game_details_screen.dart';

/// Success body of [GameDetailsScreen].
final class _BodySuccessState extends StatelessWidget {
  /// Default constructor.
  const _BodySuccessState(this._game);

  /// Game.
  final GameResponseDto _game;

  @override
  Widget build(_) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        GameCard(_game, displayDividerBetweenBannerAndInfoBar: true),
        const MyoroBasicDivider(Axis.horizontal),
        Expanded(child: _BodySuccessStateTabView(_game)),
      ],
    );
  }
}
