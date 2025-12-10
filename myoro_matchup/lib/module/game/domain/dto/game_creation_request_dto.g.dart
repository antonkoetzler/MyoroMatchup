// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game_creation_request_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Map<String, dynamic> _$GameCreationRequestDtoToJson(
  GameCreationRequestDto instance,
) => <String, dynamic>{
  'name': instance.name,
  'sport': _$SportsEnumEnumMap[instance.sport]!,
  'frequencyDayTime': instance.frequencyDayTime.toJson(),
  'location': instance.location.toJson(),
  'price': instance.price.toJson(),
  'ageRange': instance.ageRange.toJson(),
  'visibility': _$VisibilityEnumEnumMap[instance.visibility]!,
  'profilePicture': instance.profilePicture,
  'banner': instance.banner,
};

const _$SportsEnumEnumMap = {
  SportsEnum.football: 'FOOTBALL',
  SportsEnum.futsal: 'FUTSAL',
  SportsEnum.fut7: 'FUT7',
  SportsEnum.volleyball: 'VOLLEYBALL',
};

const _$VisibilityEnumEnumMap = {
  VisibilityEnum.private: 'PRIVATE',
  VisibilityEnum.public: 'PUBLIC',
};

// **************************************************************************
// MyoroModelGenerator
// **************************************************************************

// coverage:ignore-file

/// Apply this mixin to [GameCreationRequestDto] once the code is generated.
///
/// ```dart
/// class GameCreationRequestDto with _$GameCreationRequestDtoMixin {}
/// ```
mixin _$GameCreationRequestDtoMixin {
  GameCreationRequestDto get self => this as GameCreationRequestDto;

  GameCreationRequestDto copyWith({
    String? name,
    SportsEnum? sport,
    GameFrequencyDayTimeDto? frequencyDayTime,
    LocationResponseDto? location,
    GamePriceDto? price,
    GameAgeRangeModel? ageRange,
    VisibilityEnum? visibility,
    String? profilePicture,
    String? banner,
  }) {
    return GameCreationRequestDto(
      name: name ?? self.name,
      sport: sport ?? self.sport,
      frequencyDayTime: frequencyDayTime ?? self.frequencyDayTime,
      location: location ?? self.location,
      price: price ?? self.price,
      ageRange: ageRange ?? self.ageRange,
      visibility: visibility ?? self.visibility,
      profilePicture: profilePicture ?? self.profilePicture,
      banner: banner ?? self.banner,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is GameCreationRequestDto &&
        other.runtimeType == runtimeType &&
        other.name == self.name &&
        other.sport == self.sport &&
        other.frequencyDayTime == self.frequencyDayTime &&
        other.location == self.location &&
        other.price == self.price &&
        other.ageRange == self.ageRange &&
        other.visibility == self.visibility &&
        other.profilePicture == self.profilePicture &&
        other.banner == self.banner;
  }

  @override
  int get hashCode {
    return Object.hash(
      self.name,
      self.sport,
      self.frequencyDayTime,
      self.location,
      self.price,
      self.ageRange,
      self.visibility,
      self.profilePicture,
      self.banner,
    );
  }

  @override
  String toString() =>
      'GameCreationRequestDto(\n'
      '  name: ${self.name},\n'
      '  sport: ${self.sport},\n'
      '  frequencyDayTime: ${self.frequencyDayTime},\n'
      '  location: ${self.location},\n'
      '  price: ${self.price},\n'
      '  ageRange: ${self.ageRange},\n'
      '  visibility: ${self.visibility},\n'
      '  profilePicture: ${self.profilePicture},\n'
      '  banner: ${self.banner},\n'
      ');';
}
