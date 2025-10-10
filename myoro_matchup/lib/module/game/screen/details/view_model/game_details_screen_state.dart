part of 'game_details_screen_view_model.dart';

/// State of [GameDetailsScreenViewModel].
final class GameDetailsScreenState {
  GameDetailsScreenState(MyoroRequestNotifierRequest<Game> gameRequest)
    : _gameRequestController = MyoroRequestNotifier(requestCallback: gameRequest);

  /// [MyoroRequestNotifier] of the [Game] being viewed.
  final MyoroRequestNotifier<Game> _gameRequestController;
  MyoroRequestNotifier<Game> get gameRequestController => _gameRequestController;

  /// Dispose function.
  void dispose() {
    _gameRequestController.dispose();
  }
}
