import 'package:injectable/injectable.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:myoro_matchup/myoro_matchup.dart';

part 'game_listing_screen_state.dart';

/// View model of [GameScreen].
@injectable
final class GameListingScreenViewModel {
  GameListingScreenViewModel(GameRepository gameRepository)
    : _state = GameListingScreenState(() async => await gameRepository.select()) {
    fetch();
  }

  /// State.
  final GameListingScreenState _state;

  /// Dispose function.
  void dispose() {
    _state.dispose();
  }

  /// Fetch the [Game]s.
  void fetch() {
    _state.requestController.fetch();
  }

  /// [_state] getter.
  GameListingScreenState get state {
    return _state;
  }
}
