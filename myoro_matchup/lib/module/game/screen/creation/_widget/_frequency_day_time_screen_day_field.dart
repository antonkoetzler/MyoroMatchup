part of '../game_creation_screen.dart';

/// Date field of [_FrequencyDateTimeScreen] in [GameCreationScreen].
final class _FrequencyDayTimeScreenDayField extends StatelessWidget {
  const _FrequencyDayTimeScreenDayField();

  @override
  Widget build(context) {
    final viewModel = context.read<GameCreationScreenViewModel>();
    final state = viewModel.state;
    final onDayChanged = viewModel.onDayChanged;
    final dayController = state.dayController;

    return ValueListenableBuilder(
      valueListenable: dayController,
      builder: (_, day, _) {
        return _ButtonRadioSelection<MmDayEnum>((d) => d.label, day, onDayChanged, MmDayEnum.values);
      },
    );
  }
}
