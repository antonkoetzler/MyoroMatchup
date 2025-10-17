part of 'game_details_screen_view_model.dart';

/// State of [GameDetailsScreenViewModel].
final class GameDetailsScreenState {
  GameDetailsScreenState(MyoroRequestControllerRequest<Game> gameRequest)
    : _gameRequestController = MyoroRequestController(requestCallback: gameRequest);

  /// [MyoroRequestController] of the [Game] being viewed.
  final MyoroRequestController<Game> _gameRequestController;
  MyoroRequestController<Game> get gameRequestController => _gameRequestController;

  /// Dispose function.
  void dispose() {
    _gameRequestController.dispose();
  }
}
