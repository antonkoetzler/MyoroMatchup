part of 'game_details_screen_view_model.dart';

/// State of [GameDetailsScreenViewModel].
final class GameDetailsScreenState {
  GameDetailsScreenState(MyoroRequestControllerRequest<GameResponseDto> gameRequest)
    : _gameRequestController = MyoroRequestController(requestCallback: gameRequest);

  /// [MyoroRequestController] of the [Game] being viewed.
  final MyoroRequestController<GameResponseDto> _gameRequestController;
  MyoroRequestController<GameResponseDto> get gameRequestController => _gameRequestController;

  /// Dispose function.
  void dispose() {
    _gameRequestController.dispose();
  }
}
