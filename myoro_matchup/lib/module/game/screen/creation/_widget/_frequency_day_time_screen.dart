part of '../game_creation_screen.dart';

/// Frequency, date, and time screen of [GameCreationScreen].
final class _FrequencyDayTimeScreen extends _Screen {
  _FrequencyDayTimeScreen()
    : super(
        title: localization.gameCreationScreenFrequencyDayTimeScreenTitle,
        builder: (context) {
          final themeExtension = context.resolveThemeExtension<GameCreationScreenThemeExtension>();
          final spacing = themeExtension.spacing;

          final viewModel = context.read<GameCreationScreenViewModel>();
          final state = viewModel.state;
          final frequencyController = state.frequencyController;

          return ValueListenableBuilder(
            valueListenable: frequencyController,
            builder: (_, frequency, _) {
              final isBiWeekly = frequency.isBiWeekly;

              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const _FrequencyDayTimeScreenFrequencyField(),
                  SizedBox(height: spacing * 1.4),
                  const _FrequencyDayTimeScreenTimeField(),
                  SizedBox(height: spacing),
                  const _FrequencyDayTimeScreenDayField(),
                  if (isBiWeekly) ...[
                    SizedBox(height: spacing),
                    const _FrequencyDayTimeScreenBiWeeklyDayField(),
                    SizedBox(height: spacing),
                    const _FrequencyDayTimeScreenBiWeeklyTimeField(),
                  ],
                ],
              );
            },
          );
        },
      );
}
