part of '../game_listing_screen.dart';

/// [MmEmptyFeedback] of [_BodySuccessState].
final class _BodySuccessStateEmptyFeedback extends StatelessWidget {
  const _BodySuccessStateEmptyFeedback();

  @override
  Widget build(_) {
    return Center(child: MmEmptyFeedback(title: localization.gameListingScreenBodySuccessStateEmptyTitle));
  }
}
