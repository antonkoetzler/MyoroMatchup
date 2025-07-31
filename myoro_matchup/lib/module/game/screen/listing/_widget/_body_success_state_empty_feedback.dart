part of '../game_listing_screen.dart';

/// [MyoroEmptyFeedback] of [_BodySuccessState].
final class _BodySuccessStateEmptyFeedback extends StatelessWidget {
  const _BodySuccessStateEmptyFeedback();

  @override
  Widget build(_) {
    return MyoroEmptyFeedback(
      configuration: MyoroEmptyFeedbackConfiguration(title: localization.gameListingScreenBodySuccessStateEmptyTitle),
    );
  }
}
