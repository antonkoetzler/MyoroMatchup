import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:myoro_matchup/myoro_matchup.dart';

part 'home_screen_state.dart';

/// View model of [HomeScreen].
@injectable
final class HomeScreenViewModel {
  HomeScreenViewModel(this._gameService);

  /// State.
  final _state = HomeScreenState();
  HomeScreenState get state => _state;

  /// Game service.
  final GameService _gameService;

  /// Fetches the [Game]s.
  void fetchGames() async {
    try {
      _state.gamesRequest = _state.gamesRequest.createLoadingState();
      _state.gamesRequest = _state.gamesRequest.createSuccessState(await _gameService.select());
    } catch (error, stackTrace) {
      final errorMessage = error.toString();

      if (kDebugMode) {
        print('[HomeScreenViewModel.fetchGames]: Error fetching games: "$errorMessage".');
        print('Stack trace:\n$stackTrace');
      }

      _state.gamesRequest = _state.gamesRequest.createErrorState(errorMessage);
    }
  }

  /// Dispose function.
  void dispose() {
    _state.dispose();
  }
}
