part of '../home_screen.dart';

/// Error state of [_BodyUserGameListing].
final class _BodyUserGameListingErrorState extends StatelessWidget {
  /// Default constructor.
  const _BodyUserGameListingErrorState();

  /// Build function.
  @override
  Widget build(context) {
    final viewModel = context.read<HomeScreenViewModel>();
    final fetchGames = viewModel.fetchGames;
    return Center(
      child: MmErrorFeedback(
        title: localization.homeScreenBodyUserGameListingErrorStateTitle,
        onRetry: (context) => fetchGames(),
      ),
    );
  }
}
