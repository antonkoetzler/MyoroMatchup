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

    final themeExtension = context.resolveThemeExtension<GameCreationScreenThemeExtension>();
    final spacing = themeExtension.spacing;

    return ValueListenableBuilder(
      valueListenable: dayController,
      builder: (_, day, _) {
        return Wrap(
          spacing: spacing,
          runSpacing: spacing,
          alignment: WrapAlignment.center,
          crossAxisAlignment: WrapCrossAlignment.center,
          children: MmDayEnum.values.map((item) {
            final isSelected = item == day;
            return IntrinsicWidth(child: _Button(item.label, () => onDayChanged(item), isSelected));
          }).toList(),
        );
      },
    );
  }
}
