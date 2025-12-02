part of '../widget/game_details_screen.dart';

/// [MyoroRequestEnum.error] state of [GameDetailsScreen].
final class _ErrorFeedback extends StatelessWidget {
  /// Default constructor.
  const _ErrorFeedback();

  /// Build function.
  @override
  Widget build(context) {
    final gameDetailsScreenBodyErrorFeedbackTitle = localization.gameDetailsScreenBodyErrorFeedbackTitle;

    final themeExtension = context.resolveThemeExtension<GameDetailsScreenThemeExtension>();
    final viewModel = context.read<GameDetailsScreenViewModel>();
    final fetch = viewModel.fetch;

    return Center(
      child: Padding(
        padding: themeExtension.errorStatePadding,
        child: MyoroErrorFeedback(title: gameDetailsScreenBodyErrorFeedbackTitle, onRetry: (_) => fetch()),
      ),
    );
  }
}
