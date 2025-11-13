import 'package:faker/faker.dart';
import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:myoro_matchup/myoro_matchup.dart';

part 'location.g.dart';

/// Location model.
@immutable
@myoroModel
@JsonSerializable()
final class Location with _$LocationMixin {
  /// Default constructor.
  const Location({required this.name, required this.address});

  /// Fake constructor.
  Location.fake() : name = faker.address.neighborhood(), address = LocationAddress.fake();

  /// From JSON constructor.
  factory Location.fromJson(Map<dynamic, dynamic> json) {
    return _$LocationFromJson(json as Map<String, dynamic>);
  }

  /// Name of the location.
  @JsonKey(defaultValue: kMyoroEmptyString)
  final String name;

  /// Address of the location.
  final LocationAddress address;

  /// To JSON constructor.
  Map<String, dynamic> toJson() {
    return _$LocationToJson(this);
  }
}
