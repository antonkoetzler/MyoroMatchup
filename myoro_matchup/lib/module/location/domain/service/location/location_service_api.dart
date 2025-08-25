import 'dart:async';

import 'package:faker/faker.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:myoro_matchup/myoro_matchup.dart';

/// API implementation of [LocationService].
@Singleton(as: LocationService)
final class LocationServiceApi implements LocationService {
  @override
  Future<int> create(Location model) {
    // TODO: implement create
    throw UnimplementedError();
  }

  @override
  Future<Location>? get(int id) {
    // TODO: implement get
    throw UnimplementedError();
  }

  // TODO: Mocked.
  @override
  Future<Set<Location>> select({LocationTypeEnum? locationType}) async {
    // https://nominatim.openstreetmap.org/search?format=json&addressdetails=1&q=Elase
    // TODO: Mocked.
    if (kDebugMode) {
      print('[LocationServiceApi.select]: Mocked.');
    }
    await Future.delayed(const Duration(milliseconds: 500));
    return List.generate(faker.randomGenerator.integer(100), (_) => Location.fake()).toSet();
  }

  @override
  Future<void> update(int id, Location data) {
    // TODO: implement update
    throw UnimplementedError();
  }

  @override
  Future<void> delete(int id) {
    // TODO: implement delete
    throw UnimplementedError();
  }
}
