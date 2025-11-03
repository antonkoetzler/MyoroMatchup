part of '../game_details_screen.dart';

/// [MyoroRequestEnum.error] state of [GameDetailsScreen].
final class _ErrorState extends StatelessWidget {
  const _ErrorState();

  @override
  Widget build(context) {
    final themeExtension = context.resolveThemeExtension<GameDetailsScreenThemeExtension>();
    final viewModel = context.read<GameDetailsScreenViewModel>();

    return Center(
      child: Padding(
        padding: themeExtension.errorStatePadding,
        child: MmErrorFeedback(title: localization.gameDetailsScreenBodyErrorStateTitle, onRetry: viewModel.fetch),
      ),
    );
  }
}
