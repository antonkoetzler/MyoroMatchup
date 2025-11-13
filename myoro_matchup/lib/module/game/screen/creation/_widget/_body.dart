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
    final setFooterButtonsHeight = viewModel.setFooterButtonsHeight;
    final requestController = state.requestController;

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
              ValueListenableBuilder(
                valueListenable: requestController,
                builder: (_, request, _) {
                  if (request.status.isLoading) {
                    return SizedBox(height: state.footerButtonsHeight, child: const MyoroCircularLoader());
                  } else {
                    setFooterButtonsHeight();
                    return Row(
                      spacing: spacing,
                      children: [
                        if (!isFirstScreen)
                          Expanded(
                            child: _Button(text: gameCreationScreenButtonPreviousText, onTapUp: () => onPrevious()),
                          ),
                        Expanded(
                          child: _Button(
                            text: isLastScreen ? gameCreationScreenButtonFinishText : gameCreationScreenButtonNextText,
                            onTapUp: () => isLastScreen ? onFinish() : onNext(),
                          ),
                        ),
                      ],
                    );
                  }
                },
              ),
            ],
          ),
        );
      },
    );
  }
}
