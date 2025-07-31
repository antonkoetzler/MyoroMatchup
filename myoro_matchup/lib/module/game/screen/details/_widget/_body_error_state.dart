part of '../game_details_screen.dart';

/// [MyoroRequestEnum.error] state of [GameDetailsScreen].
final class _ErrorState extends StatelessWidget {
  const _ErrorState();

  @override
  Widget build(context) {
    final viewModel = context.read<GameDetailsScreenViewModel>();

    return Center(
      child: MyoroErrorFeedback(
        configuration: MyoroErrorFeedbackConfiguration(
          title: localization.gameDetailsScreenBodyErrorStateTitle,
          retryCallback: viewModel.fetch,
        ),
      ),
    );
  }
}
