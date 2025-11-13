part of '../game_creation_screen.dart';

/// Name screen of [GameCreationScreen].
class _NameScreen extends _Screen {
  _NameScreen()
    : super(
        title: localization.gameCreationScreenNameScreenTitle,
        onValidationFailed: (viewModel) {
          final state = viewModel.state;
          final nameScreenNameFocusNode = state.nameScreenNameFocusNode;
          WidgetsBinding.instance.addPostFrameCallback((_) {
            nameScreenNameFocusNode.requestFocus();
          });
        },
        builder: (context) {
          final gameCreationScreenNameScreenNameInputLabel = localization.gameCreationScreenNameScreenNameInputLabel;
          final gameCreationScreenNameScreenNameInputPlaceholder =
              localization.gameCreationScreenNameScreenNameInputPlaceholder;

          final viewModel = context.read<GameCreationScreenViewModel>();
          final state = viewModel.state;
          final onNameChanged = viewModel.onNameChanged;
          final nameValidation = viewModel.nameValidation;
          final onNext = viewModel.onNext;
          final nameScreenNameFocusNode = state.nameScreenNameFocusNode;

          return MyoroInput(
            label: gameCreationScreenNameScreenNameInputLabel,
            placeholder: gameCreationScreenNameScreenNameInputPlaceholder,
            validation: nameValidation,
            onChanged: onNameChanged,
            autofocus: true,
            focusNode: nameScreenNameFocusNode,
            onFieldSubmitted: (_) => onNext(),
          );
        },
      );
}
