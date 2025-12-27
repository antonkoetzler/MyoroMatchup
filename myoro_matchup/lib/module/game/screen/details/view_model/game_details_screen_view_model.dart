import 'dart:async';

import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:myoro_matchup/myoro_matchup.dart';

part 'game_details_screen_state.dart';

/// View model of [GameDetailsScreen].
@injectable
final class GameDetailsScreenViewModel {
  /// Default constructor.
  GameDetailsScreenViewModel(
    this._userService,
    this._gameRepository,
    this._invitationRepository,
    @factoryParam int gameId,
  ) : _state = GameDetailsScreenState(() async => await _gameRepository.get(gameId)) {
    fetch();
  }

  /// [UserService]
  final UserService _userService;

  /// [GameRepository]
  final GameRepository _gameRepository;

  /// [InvitationRepository]
  final InvitationRepository _invitationRepository;

  /// State.
  final GameDetailsScreenState _state;

  /// Dispose function.
  void dispose() {
    _state.dispose();
  }

  /// Fetch the game.
  void fetch() {
    state.gameRequestController.fetch();
  }

  /// Fetches the teams
  Future<List<GameTeamResponseDto>> fetchTeams() async {
    return await _gameRepository.getTeams(state.gameId);
  }

  /// [MyoroSearchInput.requestCallback] of the invitation bottom sheet's user search input.
  FutureOr<Set<UserResponseDto>> getUsers() async {
    final userSelectionBottomSheetSearchQuery = state.userSelectionBottomSheetSearchQuery;
    return await _userService.getAll(userSelectionBottomSheetSearchQuery);
  }

  /// Cancel invitation.
  void cancelInvitation() {
    MmRouter.pop();
  }

  /// Sends the invitation.
  Future<String> invitationBottomSheetRequest(int inviteeId) async {
    final gameRequest = state.gameRequest;
    final game = gameRequest.data!;
    final gameId = game.id;
    final message = state.invitationMessage;
    return await _invitationRepository.sendInvitation(gameId, inviteeId, message);
  }

  /// On success of the invitation bottom sheet.
  void invitationBottomSheetOnSuccess(String? successMessage) {
    MmSnackBarHelper.showSnackBar(
      snackBar: MyoroSnackBar(snackBarType: MyoroSnackBarTypeEnum.success, message: successMessage!),
    );
    Future.delayed(kSuccessNavigationDelayDuration).then((_) => MmRouter.pop());
  }

  /// Send friend request.
  Future<String> sendFriendRequest(GamePlayerResponseDto player) async {
    return await _userService.sendFriendRequest(player.id);
  }

  /// Block user.
  Future<String> blockUser(GamePlayerResponseDto player) async {
    return await _userService.blockUser(player.id);
  }

  /// Select user.
  void selectUser(UserResponseDto user) {
    state.selectedUser = user;
    MmRouter.pop();
  }

  /// [_state] getter.
  GameDetailsScreenState get state {
    return _state;
  }
}
