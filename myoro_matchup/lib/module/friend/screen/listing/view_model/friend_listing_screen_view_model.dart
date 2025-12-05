import 'dart:async';

import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:myoro_matchup/myoro_matchup.dart';

part 'friend_listing_screen_state.dart';

/// View model of [FriendListingScreen].
@injectable
final class FriendListingScreenViewModel {
  /// Default constructor.
  FriendListingScreenViewModel(this._friendRepository) {
    _state = FriendListingScreenState(
      () async => await _friendRepository.select(searchQuery: _state.query, status: _state.filteredStatus),
    );
  }

  /// Friend repository.
  final FriendRepository _friendRepository;

  /// State.
  late final FriendListingScreenState _state;

  /// Dispose function.
  void dispose() {
    _state.dispose();
  }

  /// Fetch friends.
  void fetchFriends() {
    unawaited(_state.friendsRequestController.fetch());
  }

  /// Accept friend request.
  Future<String> acceptFriendRequest(FriendRequestResponseDto friend) async {
    return await _friendRepository.acceptFriendRequest(friend.id);
  }

  /// [MyoroRadioFilterButton.itemLabelBuilder] of the status filter.
  String statusFilterItemLabelBuilder(FriendRequestStatusEnum status) {
    return status.label;
  }

  /// Status filter on changed.
  void statusFilterOnChanged(FriendRequestStatusEnum? value) {
    _state.filteredStatus = value;
  }

  /// [_state] getter.
  FriendListingScreenState get state {
    return _state;
  }

  /// On filters cleared.
  VoidCallback? get onFiltersCleared {
    return _state.query.isNotEmpty ? _state.queryController.clear : null;
  }
}
