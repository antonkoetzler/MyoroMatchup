part of '../home_screen.dart';

/// Error state of [_BodyUserGameListing].
final class _BodyUserGameListingErrorState extends MmErrorFeedback {
  /// Default constructor.
  _BodyUserGameListingErrorState()
    : super(
        title: localization.homeScreenBodyUserGameListingErrorStateTitle,
        onRetry: (context) => context.read<HomeScreenViewModel>().fetchGames(),
      );
}
