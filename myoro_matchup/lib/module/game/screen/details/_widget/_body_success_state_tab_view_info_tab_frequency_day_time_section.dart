part of '../widget/game_details_screen.dart';

/// Frequency day time section of [GameDetailsScreen].
final class _BodySuccessStateTabViewInfoTabFrequencyDayTimeSection extends StatelessWidget {
  /// Default constructor.
  const _BodySuccessStateTabViewInfoTabFrequencyDayTimeSection(this._game);

  /// Game.
  final GameResponseDto _game;

  @override
  Widget build(context) {
    final gameDetailsScreenBodySuccessStateTabViewInfoTabFrequencyDayTimeSectionFrequencyLabel =
        localization.gameDetailsScreenBodySuccessStateTabViewInfoTabFrequencyDayTimeSectionFrequencyLabel;
    final gameDetailsScreenBodySuccessStateTabViewInfoTabFrequencyDayTimeSectionPrimaryDayLabel =
        localization.gameDetailsScreenBodySuccessStateTabViewInfoTabFrequencyDayTimeSectionPrimaryDayLabel;
    final gameDetailsScreenBodySuccessStateTabViewInfoTabFrequencyDayTimeSectionPrimaryTimesLabel =
        localization.gameDetailsScreenBodySuccessStateTabViewInfoTabFrequencyDayTimeSectionPrimaryTimesLabel;
    final gameDetailsScreenBodySuccessStateTabViewInfoTabFrequencyDayTimeSectionBiWeeklyDayLabel =
        localization.gameDetailsScreenBodySuccessStateTabViewInfoTabFrequencyDayTimeSectionBiWeeklyDayLabel;
    final gameDetailsScreenBodySuccessStateTabViewInfoTabFrequencyDayTimeSectionBiWeeklyTimesLabel =
        localization.gameDetailsScreenBodySuccessStateTabViewInfoTabFrequencyDayTimeSectionBiWeeklyTimesLabel;

    final frequencyDayTime = _game.frequencyDayTime;
    final frequency = frequencyDayTime.frequency;
    final isBiWeekly = frequency.isBiWeekly;
    final frequencyLabel = frequency.label;
    final primaryDay = frequencyDayTime.primaryDay;
    final primaryDayLabel = primaryDay.getLabel(context);
    final primaryStartTime = frequencyDayTime.primaryStartTime;
    final primaryEndTime = frequencyDayTime.primaryEndTime;
    final primaryTimes = '${primaryStartTime.format(context)} - ${primaryEndTime.format(context)}';
    final biWeeklyDay = frequencyDayTime.biWeeklyDay;
    final biWeeklyDayLabel = biWeeklyDay?.getLabel(context) ?? kMyoroEmptyString;
    final biWeeklyStartTime = frequencyDayTime.biWeeklyStartTime;
    final biWeeklyEndTime = frequencyDayTime.biWeeklyEndTime;
    final biWeeklyTimes = '${biWeeklyStartTime?.format(context)} - ${biWeeklyEndTime?.format(context)}';

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        MyoroField(
          label: gameDetailsScreenBodySuccessStateTabViewInfoTabFrequencyDayTimeSectionFrequencyLabel,
          data: frequencyLabel,
        ),
        MyoroField(
          label: gameDetailsScreenBodySuccessStateTabViewInfoTabFrequencyDayTimeSectionPrimaryDayLabel,
          data: primaryDayLabel,
        ),
        MyoroField(
          label: gameDetailsScreenBodySuccessStateTabViewInfoTabFrequencyDayTimeSectionPrimaryTimesLabel,
          data: primaryTimes,
        ),
        if (isBiWeekly) ...[
          MyoroField(
            label: gameDetailsScreenBodySuccessStateTabViewInfoTabFrequencyDayTimeSectionBiWeeklyDayLabel,
            data: biWeeklyDayLabel,
          ),
          MyoroField(
            label: gameDetailsScreenBodySuccessStateTabViewInfoTabFrequencyDayTimeSectionBiWeeklyTimesLabel,
            data: biWeeklyTimes,
          ),
        ],
      ],
    );
  }
}
