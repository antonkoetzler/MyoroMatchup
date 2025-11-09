part of '../game_creation_screen.dart';

/// Name screen of [GameCreationScreen].
class _NameScreen extends _Screen {
  _NameScreen()
    : super(
        title: localization.gameCreationScreenNameScreenTitle,
        builder: (context) {
          final gameCreationScreenNameScreenNameInputLabel = localization.gameCreationScreenNameScreenNameInputLabel;
          final gameCreationScreenNameScreenNameInputPlaceholder =
              localization.gameCreationScreenNameScreenNameInputPlaceholder;

          final viewModel = context.read<GameCreationScreenViewModel>();
          final onNameChanged = viewModel.onNameChanged;
          final nameValidation = viewModel.nameValidation;
          final onNext = viewModel.onNext;

          return MyoroInput(
            label: gameCreationScreenNameScreenNameInputLabel,
            placeholder: gameCreationScreenNameScreenNameInputPlaceholder,
            validation: nameValidation,
            onChanged: onNameChanged,
            autofocus: true,
            onFieldSubmitted: (_) => onNext(),
          );
        },
      );
}
