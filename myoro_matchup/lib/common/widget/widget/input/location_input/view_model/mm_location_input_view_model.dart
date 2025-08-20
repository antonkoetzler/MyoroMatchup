import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:myoro_matchup/myoro_matchup.dart';

part 'mm_location_input_state.dart';

/// View model of [MmLocationInput].
@injectable
final class MmLocationInputViewModel {
  MmLocationInputViewModel(this._locationService);

  /// Initialization function.
  void init(MmLocationInputConfiguration configuration) {
    _state ??= MmLocationInputState(configuration);
  }

  /// [LocationService] to search for places.
  final LocationService _locationService;

  /// State.
  MmLocationInputState? _state;

  /// [_state] getter.
  MmLocationInputState get state {
    assert(_state != null, '[MmLocationInputViewModel.state]: [_state] not initialized yet.');
    return _state!;
  }

  /// [MyoroSearchInputConfiguration.request] of the [MmLocationInput].
  Future<Set<Location>> request(String query) async {
    final response = await _locationService.select({LocationService.queryQueryParameterJsonKey: query});
    return response;
  }

  /// [MyoroSearchInputConfiguration.request] of the [MmLocationInput].
  MyoroMenuItem itemBuilder(Widget Function() builder) {
    return MyoroMenuItem(builder: (_, _) => builder());
  }
}
