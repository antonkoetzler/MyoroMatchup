// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'location.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Location _$LocationFromJson(Map<String, dynamic> json) => Location(
  name: json['name'] as String? ?? '',
  address: LocationAddress.fromJson(json['address'] as Map<String, dynamic>),
);

Map<String, dynamic> _$LocationToJson(Location instance) => <String, dynamic>{
  'name': instance.name,
  'address': instance.address,
};

// **************************************************************************
// MyoroModelGenerator
// **************************************************************************

// coverage:ignore-file

/// Apply this mixin to [Location] once the code is generated.
///
/// ```dart
/// class Location with _$LocationMixin {}
/// ```
mixin _$LocationMixin {
  Location get self => this as Location;

  Location copyWith({String? name, LocationAddress? address}) {
    return Location(name: name ?? self.name, address: address ?? self.address);
  }

  @override
  bool operator ==(Object other) {
    return other is Location &&
        other.runtimeType == runtimeType &&
        other.name == self.name &&
        other.address == self.address;
  }

  @override
  int get hashCode {
    return Object.hash(self.name, self.address);
  }

  @override
  String toString() =>
      'Location(\n'
      '  name: ${self.name},\n'
      '  address: ${self.address},\n'
      ');';
}
