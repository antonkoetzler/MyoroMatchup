import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
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
    _state = GameDetailsScreenState(
      () async => await _gameRepository.get(gameId),
      () async => await _gameRepository.setWhatsAppGroupChatLink(gameId, state.whatsAppGroupChatLink),
      () async => await _gameRepository.setUseWhatsAppGroupChatBot(gameId, state.useWhatsAppGroupChatBot),
    );
    _state
      ..gameRequestController.addListener(_gameRequestControllerListener)
      ..whatsAppGroupChatLinkController.addListener(_whatsAppGroupChatLinkControllerListener)
      ..useWhatsAppGroupChatBotRequestController.addListener(_useWhatsAppGroupChatBotRequestControllerListener);
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

  /// Fetches the players
  Future<List<GamePlayerResponseDto>> fetchPlayers() async {
    return await _gameRepository.getPlayers(state.gameId);
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

  /// Sets the use WhatsApp group chat bot.
  void openUseWhatsAppGroupChatBotBottomSheet(BuildContext context, bool useWhatsAppGroupChatBot) {
    final gameDetailsScreenUseWhatsAppGroupChatBotBottomSheetTitle =
        localization.gameDetailsScreenUseWhatsAppGroupChatBotBottomSheetTitle;
    final gameDetailsScreenUseWhatsAppGroupChatBotBottomSheetText =
        localization.gameDetailsScreenUseWhatsAppGroupChatBotBottomSheetText;

    final useWhatsAppGroupChatBotRequestController = state.useWhatsAppGroupChatBotRequestController;
    final fetch = useWhatsAppGroupChatBotRequestController.fetch;

    MyoroDialogModal.show(
      context,
      title: gameDetailsScreenUseWhatsAppGroupChatBotBottomSheetTitle,
      message: gameDetailsScreenUseWhatsAppGroupChatBotBottomSheetText,
      onConfirm: fetch,
    );
  }

  /// Use WhatsApp group chat bot disabled on tap up.
  void useWhatsAppGroupChatBotDisabledOnTapUp() {
    final gameDetailsScreenUseWhatsAppGroupChatBotDisabledOnTapUpMessage =
        localization.gameDetailsScreenUseWhatsAppGroupChatBotDisabledOnTapUpMessage;

    MmSnackBarHelper.showSnackBar(
      snackBar: MyoroSnackBar(
        snackBarType: MyoroSnackBarTypeEnum.attention,
        message: gameDetailsScreenUseWhatsAppGroupChatBotDisabledOnTapUpMessage,
      ),
    );
  }

  /// WhatsApp group chat link input validation.
  String? whatsAppGroupChatLinkInputValidation(String text) {
    if (text.isEmpty) {
      return localization.gameDetailsScreenWhatsAppGroupChatLinkInputValidationEmpty;
    }
    final pattern = RegExp(r'^https://chat\.whatsapp\.com/[A-Za-z0-9_-]+$');
    if (!pattern.hasMatch(text)) {
      return localization.gameDetailsScreenWhatsAppGroupChatLinkInputValidationInvalid;
    }
    return null;
  }

  /// Clear the WhatsApp group chat link.
  void clearWhatsAppGroupChatLink() {
    state.whatsAppGroupChatLinkController.clear();
  }

  /// Paste the WhatsApp group chat link.
  void pasteWhatsAppGroupChatLink(_, _) async {
    final clipboard = await Clipboard.getData(Clipboard.kTextPlain);
    if (clipboard == null) return;
    final clipboardText = clipboard.text ?? kMyoroEmptyString;
    final isValid = whatsAppGroupChatLinkInputValidation(clipboardText) == null;
    isValid
        ? _state.whatsAppGroupChatLink = clipboardText
        : MmSnackBarHelper.showSnackBar(
            snackBar: MyoroSnackBar(
              snackBarType: MyoroSnackBarTypeEnum.error,
              message: localization.gameDetailsScreenWhatsAppGroupChatLinkInputValidationInvalid,
            ),
          );
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
  void _gameRequestControllerListener() {
    final gameRequest = state.gameRequest;
    final status = gameRequest.status;
    final isSuccess = status.isSuccess;
    if (isSuccess) {
      final game = gameRequest.data!;
      state.useWhatsAppGroupChatBot = game.useWhatsAppGroupChatBot;
    }
  }

  /// [_whatsAppGroupChatLinkControllerListener] listener.
  void _whatsAppGroupChatLinkControllerListener() {
    _state.whatsAppGroupChatLinkIsValid = state.whatsAppGroupChatLinkFormKey.currentState?.validate() ?? false;
  }

  /// [_useWhatsAppGroupChatBotRequestControllerListener] listener.
  void _useWhatsAppGroupChatBotRequestControllerListener() {
    final useWhatsAppGroupChatBotRequest = state.useWhatsAppGroupChatBotRequest;
    final message = useWhatsAppGroupChatBotRequest.data!;
    MmSnackBarHelper.showSnackBar(
      snackBar: MyoroSnackBar(snackBarType: MyoroSnackBarTypeEnum.success, message: message),
    );
  }

  /// [_state] getter.
  GameDetailsScreenState get state {
    return _state;
  }
}
