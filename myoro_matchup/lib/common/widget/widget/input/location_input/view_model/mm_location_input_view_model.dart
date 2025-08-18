import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:myoro_matchup/myoro_matchup.dart';

part 'mm_location_input_state.dart';

/// View model of [MmLocationInput].
final class MmLocationInputViewModel {
  MmLocationInputViewModel(MmLocationInputConfiguration configuration) : _state = MmLocationInputState(configuration);

  /// State.
  final MmLocationInputState _state;

  /// [_state] getter.
  MmLocationInputState get state => _state;

  /// [MyoroSearchInputConfiguration.request] of the [MmLocationInput].
  Future<Set<MmLocationInputLocation>> request(String query) async {}
}
