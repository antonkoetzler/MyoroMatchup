part of 'game_listing_screen_view_model.dart';

/// State of [GameScreenViewModel].
final class GameListingScreenState {
  /// Default constructor.
  GameListingScreenState(MyoroRequestControllerRequest<Set<GameResponseDto>> requestCallback)
    : _requestController = MyoroRequestController(requestCallback: requestCallback);

  /// Request controller.
  final MyoroRequestController<Set<GameResponseDto>> _requestController;

  /// Dispose function.
  void dispose() {
    _requestController.dispose();
  }

  /// [_requestController] getter.
  MyoroRequestController<Set<GameResponseDto>> get requestController {
    return _requestController;
  }

  /// Getter of [_requestController]'s value.
  MyoroRequest<Set<GameResponseDto>> get request {
    return _requestController.value;
  }

  /// Setter of [_requestController]'s value.
  set request(MyoroRequest<Set<GameResponseDto>> request) {
    _requestController.value = request;
  }
}
