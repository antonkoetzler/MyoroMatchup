import 'package:injectable/injectable.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:myoro_matchup/myoro_matchup.dart';

part 'game_details_screen_state.dart';

/// View model of [GameDetailsScreen].
@injectable
final class GameDetailsScreenViewModel {
  GameDetailsScreenViewModel(this._gameRepository);

  /// [GameRepository]
  final GameRepository _gameRepository;

  /// State.
  GameDetailsScreenState? _state;
  GameDetailsScreenState get state {
    assert(_state != null, '[GameDetailsScreenViewModel.state]: [_state] not initializated yet.');
    return _state!;
  }

  /// Initialization function.
  void init(int gameId) {
    if (_state != null) return;
    _state = GameDetailsScreenState(() async => await _gameRepository.get(gameId));
    fetch();
  }

  /// Dispose function.
  void dispose() {
    _state?.dispose();
  }

  /// Fetch the [Game].
  void fetch() {
    state.gameRequestController.fetch();
  }
}
