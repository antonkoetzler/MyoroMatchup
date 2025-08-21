import 'package:myoro_matchup/myoro_matchup.dart';

/// Service for getting locations.
abstract interface class LocationService extends MmCrudService<Location> {
  // TODO: Create constnats.dart for backend.
  static const queryQueryParameterJsonKey = 'query';
}
