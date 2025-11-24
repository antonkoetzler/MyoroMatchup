import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:myoro_matchup/myoro_matchup.dart';

part 'mm_location_input_state.dart';

/// View model of [MmLocationInput].
@injectable
final class MmLocationInputViewModel {
  /// Default constructor.
  MmLocationInputViewModel(this._locationRepository);

  /// [LocationRepository] to search for places.
  final OpenStreetMapLocationRepository _locationRepository;

  /// State.
  final _state = MmLocationInputState();

  /// [MyoroSearchInput.requestCallback] of the [MmLocationInput].
  Future<Set<LocationResponseDto>> requestCallback(String query) async {
    final response = await _locationRepository.select(query);
    return response.map<LocationResponseDto>(openStreetMapLocationResponseDtoToLocationResponseDto).toSet();
  }

  /// [_state] getter.
  MmLocationInputState get state {
    return _state;
  }
}
