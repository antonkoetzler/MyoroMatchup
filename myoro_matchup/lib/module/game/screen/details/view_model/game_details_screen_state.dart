part of 'game_details_screen_view_model.dart';

/// State of [GameDetailsScreenViewModel].
final class GameDetailsScreenState {
  /// Default constructor.
  GameDetailsScreenState(MyoroRequestControllerRequest<GameResponseDto> gameRequest)
    : _gameRequestController = MyoroRequestController(gameRequest);

  /// [MyoroRequestController] of the game being viewed.
  final MyoroRequestController<GameResponseDto> _gameRequestController;

  /// [TextEditingController] of the invitation message.
  final _invitationMessageController = TextEditingController();

  /// [ValueNotifier] of the selected user.
  final _selectedUserController = ValueNotifier<UserResponseDto?>(null);

  /// [TextEditingController] of the search query of the user selection bottom sheet.
  final _userSelectionBottomSheetSearchQueryController = TextEditingController();

  /// Dispose function.
  void dispose() {
    _gameRequestController.dispose();
    _invitationMessageController.dispose();
    _selectedUserController.dispose();
    _userSelectionBottomSheetSearchQueryController.dispose();
  }

  /// [_gameRequestController] getter.
  MyoroRequestController<GameResponseDto> get gameRequestController {
    return _gameRequestController;
  }

  /// [_gameRequestController] getter.
  MyoroRequest<GameResponseDto> get gameRequest {
    return _gameRequestController.value;
  }

  /// Game ID getter.
  int get gameId {
    assert(
      gameRequest.status.isSuccess,
      '[GameDetailsScreenState.gameId] Game ID can only be accessed when the game request is successful.',
    );
    return gameRequest.data!.id;
  }

  /// [_invitationMessageController] getter.
  TextEditingController get invitationMessageController {
    return _invitationMessageController;
  }

  /// Getter of [_invitationMessageController]'s text.
  String get invitationMessage {
    return _invitationMessageController.text;
  }

  /// [_selectedUserController] getter.
  ValueNotifier<UserResponseDto?> get selectedUserController {
    return _selectedUserController;
  }

  /// Getter of [_selectedUserController]'s value.
  UserResponseDto? get selectedUser {
    return _selectedUserController.value;
  }

  /// [_userSelectionBottomSheetSearchQueryController] getter.
  TextEditingController get userSelectionBottomSheetSearchQueryController {
    return _userSelectionBottomSheetSearchQueryController;
  }

  /// Getter of [_userSelectionBottomSheetSearchQueryController]'s text.
  String get userSelectionBottomSheetSearchQuery {
    return _userSelectionBottomSheetSearchQueryController.text;
  }

  /// [_selectedUserController] setter.
  set selectedUser(UserResponseDto? value) {
    _selectedUserController.value = value;
  }
}
