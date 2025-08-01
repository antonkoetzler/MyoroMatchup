part of '../game_details_screen.dart';

/// [MmRequestEnum.error] state of [GameDetailsScreen].
final class _ErrorState extends StatelessWidget {
  const _ErrorState();

  @override
  Widget build(context) {
    final themeExtension = context.resolveThemeExtension<GameDetailsScreenThemeExtension>();
    final viewModel = context.read<GameDetailsScreenViewModel>();

    return Center(
      child: Padding(
        padding: themeExtension.errorStatePadding,
        child: MmErrorFeedback(
          configuration: MmErrorFeedbackConfiguration(
            title: localization.gameDetailsScreenBodyErrorStateTitle,
            retryCallback: viewModel.fetch,
          ),
        ),
      ),
    );
  }
}
