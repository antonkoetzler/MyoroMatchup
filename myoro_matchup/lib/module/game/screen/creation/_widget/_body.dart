part of '../game_creation_screen.dart';

/// [MyoroScreenConfiguration.body] of [GameCreationScreen].
final class _Body extends StatelessWidget {
  const _Body();

  @override
  Widget build(context) {
    final viewModel = context.read<GameCreationScreenViewModel>();
    final state = viewModel.state;
    final selectedIndexController = state.selectedIndexController;
    final onPrevious = viewModel.onPrevious;
    final onNext = viewModel.onNext;
    final onFinish = viewModel.onFinish;

    final gameCreationScreenButtonPreviousText = localization.gameCreationScreenButtonPreviousText;
    final gameCreationScreenButtonNextText = localization.gameCreationScreenButtonNextText;
    final gameCreationScreenButtonFinishText = localization.gameCreationScreenButtonFinishText;

    final themeExtension = context.resolveThemeExtension<GameCreationScreenThemeExtension>();
    final spacing = themeExtension.spacing;
    final bodyPadding = themeExtension.bodyPadding;

    return ValueListenableBuilder(
      valueListenable: selectedIndexController,
      builder: (_, selectedIndex, _) {
        final isFirstScreen = selectedIndex == 0;
        final isLastScreen = selectedIndex == GameCreationScreen.screens.length - 1;

        return Padding(
          padding: bodyPadding,
          child: Column(
            spacing: spacing,
            children: [
              Expanded(
                child: MyoroIndexedStack(index: selectedIndex, children: GameCreationScreen.screens),
              ),
              Row(
                spacing: spacing,
                children: [
                  if (!isFirstScreen)
                    Expanded(child: _Button(gameCreationScreenButtonPreviousText, () => onPrevious())),
                  Expanded(
                    child: _Button(
                      isLastScreen ? gameCreationScreenButtonFinishText : gameCreationScreenButtonNextText,
                      () => isLastScreen ? onFinish() : onNext(),
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
