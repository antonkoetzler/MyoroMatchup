part of '../game_listing_screen.dart';

/// [MmRequestEnum.error] state of [_Body].
final class _BodyErrorState extends StatelessWidget {
  const _BodyErrorState();

  @override
  Widget build(context) {
    final themeExtension = context.resolveThemeExtension<GameListingScreenThemeExtension>();
    final errorStatePadding = themeExtension.errorStatePadding;

    final viewModel = context.read<GameListingScreenViewModel>();
    final fetch = viewModel.fetch;

    return Center(
      child: Padding(
        padding: errorStatePadding,
        child: MmErrorFeedback(title: localization.gameListingScreenBodyErrorStateTitle, onRetry: fetch),
      ),
    );
  }
}
