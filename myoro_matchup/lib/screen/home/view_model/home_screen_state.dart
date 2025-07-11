part of 'home_screen_view_model.dart';

/// State of [HomeScreenViewModel].
final class HomeScreenState {
  /// [ValueNotifier] of the [MyoroRequest] of the [Game]s being fetched.
  final _gamesRequestNotifier = ValueNotifier(const MyoroRequest<Set<Game>>());
  ValueNotifier<MyoroRequest<Set<Game>>> get gamesRequestNotifier => _gamesRequestNotifier;
  MyoroRequest<Set<Game>> get gamesRequest => _gamesRequestNotifier.value;
  set gamesRequest(MyoroRequest<Set<Game>> gamesRequest) => _gamesRequestNotifier.value = gamesRequest;

  /// Dispose function.
  void dispose() {
    _gamesRequestNotifier.dispose();
  }
}
