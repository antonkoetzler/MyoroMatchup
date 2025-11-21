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
    GameRepository gameRepository,
    this._userRepository,
    this._invitationRepository,
    @factoryParam int gameId,
  ) : _state = GameDetailsScreenState(() async => await gameRepository.get(gameId)) {
    fetch();
  }

  /// [UserRepository]
  final UserRepository _userRepository;

  /// [InvitationRepository]
  final InvitationRepository _invitationRepository;

  /// State.
  final GameDetailsScreenState _state;

  /// Dispose function.
  void dispose() {
    _state.dispose();
  }

  /// Fetch the [Game].
  void fetch() {
    state.gameRequestController.fetch();
  }

  /// [MyoroSearchInput.requestCallback] of the invitation bottom sheet's user search input.
  FutureOr<Set<UserResponseDto>> invitationBottomSheetUserSearchInputRequestCallback(String query) async {
    return await _userRepository.getAll();
  }

  /// [MyoroSearchInput.itemBuilder] of the invitation bottom sheet's user search input.
  MyoroMenuItem invitationBottomSheetUserSearchInputItemBuilder(UserResponseDto user, _) {
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
    AppRouter.pop();
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
    Future.delayed(kSuccessNavigationDelayDuration).then((_) => AppRouter.pop());
  }

  /// [_state] getter.
  GameDetailsScreenState get state {
    return _state;
  }
}
