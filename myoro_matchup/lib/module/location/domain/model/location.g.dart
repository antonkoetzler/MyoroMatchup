// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'location.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Location _$LocationFromJson(Map<String, dynamic> json) => Location(
  name: json['name'] as String? ?? '',
  city: json['city'] as String? ?? '',
  country: Location._countryFromJson(json['country']),
);

Map<String, dynamic> _$LocationToJson(Location instance) => <String, dynamic>{
  'name': instance.name,
  'city': instance.city,
  'country': ?Location._countryToJson(instance.country),
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

  Location copyWith({String? name, String? city, MyoroCountryEnum? country, bool countryProvided = true}) {
    return Location(
      name: name ?? self.name,
      city: city ?? self.city,
      country: countryProvided ? (country ?? self.country) : null,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is Location &&
        other.runtimeType == runtimeType &&
        other.name == self.name &&
        other.city == self.city &&
        other.country == self.country;
  }

  @override
  int get hashCode {
    return Object.hash(self.name, self.city, self.country);
  }

  @override
  String toString() =>
      'Location(\n'
      '  name: ${self.name},\n'
      '  city: ${self.city},\n'
      '  country: ${self.country},\n'
      ');';
}
