part of '../game_creation_screen.dart';

/// Time field of [_FrequencyDayTimeScreen] in [GameCreationScreen].
final class _FrequencyDayTimeScreenTimeField extends StatelessWidget {
  const _FrequencyDayTimeScreenTimeField();

  @override
  Widget build(context) {
    final themeExtension = context.resolveThemeExtension<GameCreationScreenThemeExtension>();
    final spacing = themeExtension.spacing;

    final gameCreationScreenFrequencyDayTimeScreenTimeFieldStartLabel =
        localization.gameCreationScreenFrequencyDayTimeScreenTimeFieldStartLabel;
    final gameCreationScreenFrequencyDayTimeScreenTimeFieldEndLabel =
        localization.gameCreationScreenFrequencyDayTimeScreenTimeFieldEndLabel;

    return Row(
      spacing: spacing,
      children: [
        Expanded(
          child: MyoroTimePickerInput(
            label: gameCreationScreenFrequencyDayTimeScreenTimeFieldStartLabel,
            onChanged: (_) => print('qwe'),
          ),
        ),
        Expanded(
          child: MyoroTimePickerInput(
            label: gameCreationScreenFrequencyDayTimeScreenTimeFieldEndLabel,
            onChanged: (_) => print('qwe'),
          ),
        ),
      ],
    );
  }
}
