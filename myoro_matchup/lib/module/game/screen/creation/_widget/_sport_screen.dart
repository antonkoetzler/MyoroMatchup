part of '../game_creation_screen.dart';

/// Sport screen of [GameCreationScreen].
final class _SportScreen extends _Screen {
  _SportScreen()
    : super(
        title: localization.gameCreationScreenSportScreenTitle,
        builder: (context) {
          final viewModel = context.read<GameCreationScreenViewModel>();
          final state = viewModel.state;
          final sportController = state.sportController;
          final onSportChanged = viewModel.onSportChanged;

          final themeExtension = context.resolveThemeExtension<GameCreationScreenThemeExtension>();
          final spacing = themeExtension.spacing;

          return ValueListenableBuilder(
            valueListenable: sportController,
            builder: (_, sport, _) {
              return Column(
                spacing: spacing,
                children: SportsEnum.values.map((item) {
                  final isSelected = item == sport;
                  return _Button(item.formattedName, () => onSportChanged(item), isSelected);
                }).toList(),
              );
            },
          );
        },
      );
}
