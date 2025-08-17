part of '../game_creation_screen.dart';

/// Location field of [GameCreationScreen].
final class _LocationField extends StatelessWidget {
  const _LocationField();

  @override
  Widget build(context) {
    final viewModel = context.read<GameCreationScreenViewModel>();
    final locationFieldItemBuilder = viewModel.locationFieldItemBuilder;

    return MyoroSearchInput<String>(
      configuration: MyoroSearchInputConfiguration(
        inputConfiguration: const MyoroInputConfiguration(),
        request: (_) => {},
        itemBuilder: locationFieldItemBuilder,
      ),
    );
  }
}
