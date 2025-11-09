part of '../game_creation_screen.dart';

/// Age range screen of [GameCreationScreen].
final class _AgeRangeScreen extends _Screen {
  _AgeRangeScreen()
    : super(
        title: localization.gameCreationScreenAgeRangeScreenTitle,
        builder: (context) {
          final viewModel = context.read<GameCreationScreenViewModel>();
          final onAgeRangeChanged = viewModel.onAgeRangeChanged;
          final state = viewModel.state;
          final ageRangeController = state.ageRangeController;

          return ValueListenableBuilder(
            valueListenable: ageRangeController,
            builder: (_, ageRange, _) {
              return MyoroRangeSlider(
                currentValueText: ageRange.start.toStringAsFixed(0),
                maxValueText: ageRange.end.toStringAsFixed(0),
                values: ageRange,
                onChanged: onAgeRangeChanged,
                min: 0,
                max: 100,
              );
            },
          );
        },
      );
}
