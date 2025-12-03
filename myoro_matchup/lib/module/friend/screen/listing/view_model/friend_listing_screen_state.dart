part of 'friend_listing_screen_view_model.dart';

/// State of [FriendListingScreenViewModel].
final class FriendListingScreenState {
  /// Query controller.
  final _queryController = TextEditingController();

  /// Dispose function.
  void dispose() {
    _queryController.dispose();
  }

  /// [_queryController] getter.
  TextEditingController get queryController {
    return _queryController;
  }

  /// [_queryController] getter.
  String get query {
    return _queryController.text;
  }
}
