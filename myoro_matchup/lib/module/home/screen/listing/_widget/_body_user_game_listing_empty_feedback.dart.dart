part of '../home_screen.dart';

/// [MmEmptyFeedback] of [_BodyUserGameListing].
final class _BodyUserGameListingEmptyFeedback extends StatelessWidget {
  const _BodyUserGameListingEmptyFeedback();

  @override
  Widget build(_) {
    return Center(child: MyoroEmptyFeedback(title: localization.homeScreenBodyUserGameListingEmptyTitle));
  }
}
