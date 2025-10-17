import 'package:faker/faker.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:myoro_matchup/myoro_matchup.dart';

/// Repository for getting locations.
@injectable
final class LocationRepository {
  /// Gets all [Location]s.
  Future<Set<Location>> select({LocationTypeEnum? locationType}) async {
    // https://nominatim.openstreetmap.org/search?format=json&addressdetails=1&q=Elase
    // TODO: Mocked.
    if (kDebugMode) {
      print('[LocationRepositoryApi.select]: Mocked.');
    }
    await Future.delayed(const Duration(milliseconds: 500));
    return List.generate(faker.randomGenerator.integer(100), (_) => Location.fake()).toSet();
  }
}
