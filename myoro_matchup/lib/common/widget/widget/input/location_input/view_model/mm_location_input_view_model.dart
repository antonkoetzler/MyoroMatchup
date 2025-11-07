import 'package:injectable/injectable.dart';
import 'package:myoro_matchup/myoro_matchup.dart';

part 'mm_location_input_state.dart';

/// View model of [MmLocationInput].
@injectable
final class MmLocationInputViewModel {
  /// Default constructor.
  MmLocationInputViewModel(this._locationRepository, @factoryParam LocationTypeEnum type)
    : _state = MmLocationInputState(type);

  /// [LocationRepository] to search for places.
  final LocationRepository _locationRepository;

  /// State.
  final MmLocationInputState _state;

  /// [MyoroSearchInputConfiguration.request] of the [MmLocationInput].
  Future<Set<Location>> request(String query) async {
    final response = await _locationRepository.select();
    return response;
  }

  /// [_state] getter.
  MmLocationInputState get state {
    return _state;
  }
}
