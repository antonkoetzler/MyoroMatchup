part of 'game_listing_screen_view_model.dart';

/// State of [GameScreenViewModel].
final class GameListingScreenState {
  /// [ValueNotifier] of the [MyoroRequest] of the [Game]s being fetched.
  final _gamesRequestNotifier = ValueNotifier(const MyoroRequest<Set<GameResponseDto>>());
  ValueNotifier<MyoroRequest<Set<GameResponseDto>>> get gamesRequestNotifier => _gamesRequestNotifier;
  MyoroRequest<Set<GameResponseDto>> get gamesRequest => _gamesRequestNotifier.value;
  set gamesRequest(MyoroRequest<Set<GameResponseDto>> gamesRequest) => _gamesRequestNotifier.value = gamesRequest;

  /// Dispose function.
  void dispose() {
    _gamesRequestNotifier.dispose();
  }
}
