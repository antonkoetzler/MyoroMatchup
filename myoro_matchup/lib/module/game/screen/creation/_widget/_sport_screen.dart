part of '../game_creation_screen.dart';

/// Sport screen of [GameCreationScreen].
final class _SportScreen extends StatelessWidget {
  const _SportScreen();

  @override
  Widget build(context) {
    final viewModel = context.read<GameCreationScreenViewModel>();
    final state = viewModel.state;
    final sportController = state.sportController;
    final onSportChanged = viewModel.onSportChanged;

    final gameCreationScreenSportScreenTitle = localization.gameCreationScreenSportScreenTitle;

    return _Screen(
      title: gameCreationScreenSportScreenTitle,
      child: ValueListenableBuilder(
        valueListenable: sportController,
        builder: (_, sport, _) {
          return _ButtonRadioSelection<SportsEnum>((s) => s.formattedName, sport, onSportChanged, SportsEnum.values);
        },
      ),
    );
  }
}
