part of '../widget/game_details_screen.dart';

/// Age range section of [GameDetailsScreen].
final class _BodySuccessStateTabViewInfoTabAgeRangeSection extends StatelessWidget {
  /// Default constructor.
  const _BodySuccessStateTabViewInfoTabAgeRangeSection(this._game);

  /// Game.
  final GameResponseDto _game;

  @override
  Widget build(_) {
    final gameDetailsScreenBodySuccessStateTabViewInfoTabAgeRangeSectionLabel =
        localization.gameDetailsScreenBodySuccessStateTabViewInfoTabAgeRangeSectionLabel;
    final gameDetailsScreenBodySuccessStateTabViewInfoTabAgeRangeSectionData =
        localization.gameDetailsScreenBodySuccessStateTabViewInfoTabAgeRangeSectionData;

    final ageRange = _game.ageRange;
    final minAge = ageRange.minAge;
    final maxAge = ageRange.maxAge;

    return MyoroField(
      label: gameDetailsScreenBodySuccessStateTabViewInfoTabAgeRangeSectionLabel,
      data: gameDetailsScreenBodySuccessStateTabViewInfoTabAgeRangeSectionData(minAge, maxAge),
    );
  }
}
