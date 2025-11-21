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

    final themeExtension = context.resolveThemeExtension<GameDetailsScreenThemeExtension>();
    final spacing = themeExtension.spacing;

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
      spacing: spacing,
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          spacing: spacing,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: MyoroField(
                direction: Axis.vertical,
                label: gameDetailsScreenBodySuccessStateTabViewInfoTabFrequencyDayTimeSectionFrequencyLabel,
                data: frequencyLabel,
              ),
            ),
            Expanded(
              flex: 2,
              child: MyoroField(
                direction: Axis.vertical,
                label: gameDetailsScreenBodySuccessStateTabViewInfoTabFrequencyDayTimeSectionPrimaryTimesLabel,
                data: primaryTimes,
              ),
            ),
            Expanded(
              child: MyoroField(
                direction: Axis.vertical,
                label: gameDetailsScreenBodySuccessStateTabViewInfoTabFrequencyDayTimeSectionPrimaryDayLabel,
                data: primaryDayLabel,
              ),
            ),
          ],
        ),
        if (isBiWeekly) ...[
          MyoroField(
            direction: Axis.vertical,
            label: gameDetailsScreenBodySuccessStateTabViewInfoTabFrequencyDayTimeSectionBiWeeklyDayLabel,
            data: biWeeklyDayLabel,
          ),
          MyoroField(
            direction: Axis.vertical,
            label: gameDetailsScreenBodySuccessStateTabViewInfoTabFrequencyDayTimeSectionBiWeeklyTimesLabel,
            data: biWeeklyTimes,
          ),
        ],
      ],
    );
  }
}
