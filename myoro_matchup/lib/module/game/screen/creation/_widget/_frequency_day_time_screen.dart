part of '../game_creation_screen.dart';

/// Frequency, date, and time screen of [GameCreationScreen].
final class _FrequencyDayTimeScreen extends StatelessWidget {
  const _FrequencyDayTimeScreen();

  @override
  Widget build(context) {
    final themeExtension = context.resolveThemeExtension<GameCreationScreenThemeExtension>();
    final spacing = themeExtension.spacing;

    final gameCreationScreenFrequencyDayTimeScreenTitle = localization.gameCreationScreenFrequencyDayTimeScreenTitle;

    return _Screen(
      title: gameCreationScreenFrequencyDayTimeScreenTitle,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const _FrequencyDayTimeScreenFrequencyField(),
          SizedBox(height: spacing * 1.4),
          const _FrequencyDayTimeScreenTimeField(),
          SizedBox(height: spacing),
          const _FrequencyDayTimeScreenDayField(),
        ],
      ),
    );
  }
}
