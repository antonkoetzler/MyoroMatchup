part of '../game_creation_screen.dart';

/// Bi weekly day field of [_FrequencyDayTimeScreen] in [GameCreationScreen].
final class _FrequencyDayTimeScreenBiWeeklyDayField extends StatelessWidget {
  const _FrequencyDayTimeScreenBiWeeklyDayField();

  @override
  Widget build(context) {
    final viewModel = context.read<GameCreationScreenViewModel>();
    final state = viewModel.state;
    final biWeeklyDayController = state.biWeeklyDayController;
    return _DayButtonRow(biWeeklyDayController);
  }
}
