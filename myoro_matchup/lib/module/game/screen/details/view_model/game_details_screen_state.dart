part of 'game_details_screen_view_model.dart';

/// State of [GameDetailsScreenViewModel].
final class GameDetailsScreenState {
  /// Default constructor.
  GameDetailsScreenState(
    MyoroRequestControllerRequest<GameResponseDto> gameRequest,
    MyoroRequestControllerRequest<String> whatsAppGroupChatLinkRequest,
    MyoroRequestControllerRequest<String> useWhatsAppGroupChatBotRequest,
  ) : _gameRequestController = MyoroRequestController(gameRequest),
      _useWhatsAppGroupChatBotRequestController = MyoroRequestController(useWhatsAppGroupChatBotRequest),
      _whatsAppGroupChatLinkRequestController = MyoroRequestController(whatsAppGroupChatLinkRequest);

  /// [MyoroRequestController] of the game being viewed.
  final MyoroRequestController<GameResponseDto> _gameRequestController;

  /// [ValueNotifier] of the ID of the invitee.
  final _inviteeIdController = ValueNotifier<int?>(null);

  /// [TextEditingController] of the invitation message.
  final _invitationMessageController = TextEditingController();

  /// [ValueNotifier] of the use WhatsApp group chat bot.
  final _useWhatsAppGroupChatBotController = ValueNotifier<bool>(false);

  /// WhatsApp group chat link form key to cal validation
  ///
  /// Whenever the text is changed.
  final _whatsAppGroupChatLinkFormKey = GlobalKey<FormState>();

  /// [ValueNotifier] of the WhatsApp group chat link validity.
  final _whatsAppGroupChatLinkIsValidController = ValueNotifier<bool>(false);

  /// [TextEditingController] of the WhatsApp group chat link.
  final _whatsAppGroupChatLinkController = TextEditingController();

  /// [MyoroRequestController] of the request to set the WhatsApp group chat link.
  final MyoroRequestController<String> _whatsAppGroupChatLinkRequestController;

  /// [MyoroRequestController] of the request to set if the group chat bot is used.
  final MyoroRequestController<String> _useWhatsAppGroupChatBotRequestController;

  /// Dispose function.
  void dispose() {
    _gameRequestController.dispose();
    _inviteeIdController.dispose();
    _invitationMessageController.dispose();
    _useWhatsAppGroupChatBotController.dispose();
    _whatsAppGroupChatLinkIsValidController.dispose();
    _whatsAppGroupChatLinkController.dispose();
    _whatsAppGroupChatLinkRequestController.dispose();
    _useWhatsAppGroupChatBotRequestController.dispose();
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

  /// [_useWhatsAppGroupChatBotController] getter.
  ValueNotifier<bool> get useWhatsAppGroupChatBotController {
    return _useWhatsAppGroupChatBotController;
  }

  /// Getter of [_useWhatsAppGroupChatBotController]'s value.
  bool get useWhatsAppGroupChatBot {
    return _useWhatsAppGroupChatBotController.value;
  }

  /// [_whatsAppGroupChatLinkIsValid] getter.
  ValueNotifier<bool> get whatsAppGroupChatLinkIsValidController {
    return _whatsAppGroupChatLinkIsValidController;
  }

  /// Getter of [_whatsAppGroupChatLinkIsValid]'s value.
  bool get whatsAppGroupChatLinkIsValid {
    return _whatsAppGroupChatLinkIsValidController.value;
  }

  /// [_whatsAppGroupChatLinkFormKey] getter.
  GlobalKey<FormState> get whatsAppGroupChatLinkFormKey {
    return _whatsAppGroupChatLinkFormKey;
  }

  /// [_whatsAppGroupChatLinkController] getter.
  TextEditingController get whatsAppGroupChatLinkController {
    return _whatsAppGroupChatLinkController;
  }

  /// Getter of [_whatsAppGroupChatLinkController]'s text.
  String get whatsAppGroupChatLink {
    return _whatsAppGroupChatLinkController.text;
  }

  /// [_whatsAppGroupChatLinkRequestController] getter.
  MyoroRequestController<String> get whatsAppGroupChatLinkRequestController {
    return _whatsAppGroupChatLinkRequestController;
  }

  /// Getter of [_whatsAppGroupChatLinkRequestController]'s value.
  MyoroRequest<String> get whatsAppGroupChatLinkRequest {
    return _whatsAppGroupChatLinkRequestController.value;
  }

  /// [_useWhatsAppGroupChatBotRequestController] getter.
  MyoroRequestController<String> get useWhatsAppGroupChatBotRequestController {
    return _useWhatsAppGroupChatBotRequestController;
  }

  /// Getter of [_useWhatsAppGroupChatBotRequestController]'s value.
  MyoroRequest<String> get useWhatsAppGroupChatBotRequest {
    return _useWhatsAppGroupChatBotRequestController.value;
  }

  /// Game ID getter.
  int get gameId {
    assert(
      gameRequest.status.isSuccess,
      '[GameDetailsScreenState.gameId] Game ID can only be accessed when the game request is successful.',
    );
    return gameRequest.data!.id;
  }

  /// [_useWhatsAppGroupChatBotController] setter.
  set useWhatsAppGroupChatBot(bool value) {
    _useWhatsAppGroupChatBotController.value = value;
  }

  /// [_whatsAppGroupChatLinkIsValidController] setter.
  set whatsAppGroupChatLinkIsValid(bool value) {
    _whatsAppGroupChatLinkIsValidController.value = value;
  }

  /// [_inviteeIdController] setter.
  set inviteeId(int? value) {
    _inviteeIdController.value = value;
  }

  /// [_whatsAppGroupChatLinkController] setter.
  set whatsAppGroupChatLink(String value) {
    _whatsAppGroupChatLinkController.text = value;
  }
}
