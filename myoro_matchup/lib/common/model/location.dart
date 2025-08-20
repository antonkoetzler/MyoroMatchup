import 'package:faker/faker.dart';
import 'package:flutter/foundation.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';

part 'location.g.dart';

/// Location model.
///
/// TODO: Use @jsonSerializable
@immutable
@myoroModel
final class Location with _$LocationMixin {
  const Location({required this.name, required this.city, required this.country});

  // coverage:ignore-start
  Location.fake() : name = faker.address.neighborhood(), city = faker.address.city(), country = faker.address.country();
  // coverage:ignore-end

  /// Name of the location.
  final String name;

  /// City that [name] resides in.
  final String city;

  /// Country that [name] resides in.
  final String country;
}
