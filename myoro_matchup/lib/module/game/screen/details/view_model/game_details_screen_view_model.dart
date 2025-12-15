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
    this._userRepository,
    this._gameRepository,
    this._invitationRepository,
    @factoryParam int gameId,
  ) {
    _state = GameDetailsScreenState(() async => await _gameRepository.get(gameId));
    _state.gameRequestController.addListener(_gameRequestControllerListener);
    fetch();
  }

  /// [UserRepository]
  final UserRepository _userRepository;

  /// [GameRepository]
  final GameRepository _gameRepository;

  /// [InvitationRepository]
  final InvitationRepository _invitationRepository;

  /// State.
  late final GameDetailsScreenState _state;

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
  FutureOr<Set<UserResponseDto>> invitationBottomSheetUserSearchInputRequestCallback(String query) async {
    return await _userRepository.getAll();
  }

  /// [MyoroSearchInput.itemBuilder] of the invitation bottom sheet's user search input.
  MyoroMenuIconTextButtonItem invitationBottomSheetUserSearchInputItemBuilder(_, UserResponseDto user) {
    final gameDetailsScreenInvitationBottomSheetUserSearchInputItemText =
        localization.gameDetailsScreenInvitationBottomSheetUserSearchInputItemText;
    return MyoroMenuIconTextButtonItem(
      text: gameDetailsScreenInvitationBottomSheetUserSearchInputItemText(user.username, user.name),
    );
  }

  /// [MyoroSearchInput.selectedItemBuilder] of the invitation bottom sheet's user search input.
  String invitationBottomSheetUserSearchInputSelectedItemBuilder(UserResponseDto user) {
    return user.username;
  }

  /// Cancel invitation.
  void cancelInvitation() {
    MmRouter.pop();
  }

  /// Sends the invitation.
  Future<String> invitationBottomSheetRequest() async {
    final gameRequest = state.gameRequest;
    final game = gameRequest.data!;
    final gameId = game.id;
    final inviteeId = state.inviteeId!;
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
    return await _userRepository.sendFriendRequest(player.id);
  }

  /// Block user.
  Future<String> blockUser(GamePlayerResponseDto player) async {
    return await _userRepository.blockUser(player.id);
  }

  /// [_gameRequestControllerListener] listener.
  void _gameRequestControllerListener() {}

  /// [_state] getter.
  GameDetailsScreenState get state {
    return _state;
  }
}
