part of '../widget/game_details_screen.dart';

/// [Game] information tab of [GameDetailsScreen].
final class _BodySuccessStateTabViewInfoTab extends StatelessWidget {
  /// Default constructor.
  const _BodySuccessStateTabViewInfoTab(this._game);

  /// Game.
  final GameResponseDto _game;

  @override
  Widget build(_) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        _BodySuccessStateTabViewInfoTabFrequencyDayTimeSection(_game),
        _BodySuccessStateTabViewInfoTabLocationSection(_game),
        _BodySuccessStateTabViewInfoTabPriceSection(_game),
        _BodySuccessStateTabViewInfoTabAgeRangeSection(_game),
        _BodySuccessStateTabViewInfoTabVisibilitySection(_game),
      ],
    );
  }
}
