import 'package:faker/faker.dart';
import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';

part 'location.g.dart';

/// Location model.
@immutable
@myoroModel
@JsonSerializable()
final class Location with _$LocationMixin {
  const Location({required this.name, required this.city, required this.country});

  // coverage:ignore-start
  Location.fake() : name = faker.address.neighborhood(), city = faker.address.city(), country = faker.address.country();
  // coverage:ignore-end

  factory Location.fromJson(Map<String, dynamic> json) => _$LocationFromJson(json);

  /// Name of the location.
  @JsonKey(name: 'name')
  final String name;

  /// City that [name] resides in.
  @JsonKey(name: 'city')
  final String city;

  /// Country that [name] resides in.
  @JsonKey(name: 'country')
  final String country;

  Map<String, dynamic> toJson() => _$LocationToJson(this);
}
