part of '../game_details_screen.dart';

/// [MyoroRequestEnum.error] state of [GameDetailsScreen].
final class _ErrorState extends StatelessWidget {
  const _ErrorState();

  @override
  Widget build(context) {
    final viewModel = context.read<GameDetailsScreenViewModel>();

    return MyoroErrorFeedback(
      configuration: MyoroErrorFeedbackConfiguration(
        title: localization.gameDetailsScreenErrorStateTitle,
        subtitle: localization.gameDetailsScreenErrorStateSubtitle,
        retryCallback: viewModel.fetch,
      ),
    );
  }
}
