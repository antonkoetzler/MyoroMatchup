part of '../game_listing_screen.dart';

/// [MmRequestEnum.error] state of [_Body].
final class _BodyErrorState extends StatelessWidget {
  const _BodyErrorState();

  @override
  Widget build(context) {
    final viewModel = context.read<GameListingScreenViewModel>();

    return Center(
      child: MmErrorFeedback(title: localization.gameListingScreenBodyErrorStateTitle, onRetry: viewModel.fetchGames),
    );
  }
}
