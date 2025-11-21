part of 'game_details_screen_view_model.dart';

/// State of [GameDetailsScreenViewModel].
final class GameDetailsScreenState {
  /// Default constructor.
  GameDetailsScreenState(MyoroRequestControllerRequest<GameResponseDto> gameRequest)
    : _gameRequestController = MyoroRequestController(requestCallback: gameRequest);

  /// [MyoroRequestController] of the game being viewed.
  final MyoroRequestController<GameResponseDto> _gameRequestController;

  /// [ValueNotifier] of the ID of the invitee.
  final _inviteeIdController = ValueNotifier<int?>(null);

  /// [TextEditingController] of the invitation message.
  final _invitationMessageController = TextEditingController();

  /// Dispose function.
  void dispose() {
    _gameRequestController.dispose();
    _inviteeIdController.dispose();
    _invitationMessageController.dispose();
  }

  /// [_gameRequestController] getter.
  MyoroRequestController<GameResponseDto> get gameRequestController {
    return _gameRequestController;
  }

  /// [_gameRequestController] getter.
  MyoroRequest<GameResponseDto> get gameRequest {
    return _gameRequestController.value;
  }

  /// [_inviteeIdController] getter.
  ValueNotifier<int?> get inviteeIdController {
    return _inviteeIdController;
  }

  /// Getter of [_inviteeIdController]'s value.
  int? get inviteeId {
    return _inviteeIdController.value;
  }

  /// [_invitationMessageController] getter.
  TextEditingController get invitationMessageController {
    return _invitationMessageController;
  }

  /// Getter of [_invitationMessageController]'s text.
  String get invitationMessage {
    return _invitationMessageController.text;
  }

  /// [_inviteeIdController] setter.
  set inviteeId(int? value) {
    _inviteeIdController.value = value;
  }
}
