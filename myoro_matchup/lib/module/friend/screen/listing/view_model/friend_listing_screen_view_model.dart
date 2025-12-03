import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:myoro_matchup/myoro_matchup.dart';

part 'friend_listing_screen_state.dart';

/// View model of [FriendListingScreen].
@injectable
final class FriendListingScreenViewModel {
  /// Default constructor.
  FriendListingScreenViewModel(this._friendRepository);

  /// Friend repository.
  final FriendRepository _friendRepository;

  /// State.
  final _state = FriendListingScreenState();

  /// Dispose function.
  void dispose() {
    _state.dispose();
  }

  /// Fetch friends.
  Future<List<FriendRequestResponseDto>> fetchFriends() async {
    return await _friendRepository.fetchFriends();
  }

  /// [_state] getter.
  FriendListingScreenState get state {
    return _state;
  }

  /// On filters cleared.
  VoidCallback? get onFiltersCleared {
    return _state.query.isNotEmpty
        ? () {
            _state.queryController.clear();
          }
        : null;
  }
}
