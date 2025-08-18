part of '../game_creation_screen.dart';

/// Age range field of [GameCreationScreen].
final class _AgeRangeField extends StatelessWidget {
  const _AgeRangeField();

  @override
  Widget build(_) {
    return MyoroRangeSlider(
      configuration: MyoroRangeSliderConfiguration(
        label: localization.gameCreationScreenAgeRangeFieldLabel,
        values: const RangeValues(0, 1),
        onChanged: (_) {},
      ),
    );
  }
}
