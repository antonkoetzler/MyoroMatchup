// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GameResponseDto _$GameResponseDtoFromJson(Map<String, dynamic> json) => GameResponseDto(
  name: json['name'] as String,
  sport: $enumDecode(_$SportsEnumEnumMap, json['sport']),
  frequencyDayTime: GameFrequencyDayTimeDto.fromJson(json['frequencyDayTime'] as Map<String, dynamic>),
  location: Location.fromJson(json['location'] as Map<String, dynamic>),
  price: GamePriceDto.fromJson(json['price'] as Map<String, dynamic>),
  ageRange: GameAgeRangeModel.fromJson(json['ageRange'] as Map<String, dynamic>),
  visibility: $enumDecode(_$VisibilityEnumEnumMap, json['visibility']),
  profilePicture: json['profilePicture'] as String?,
  banner: json['banner'] as String?,
  id: (json['id'] as num).toInt(),
);

Map<String, dynamic> _$GameResponseDtoToJson(GameResponseDto instance) => <String, dynamic>{
  'name': instance.name,
  'sport': _$SportsEnumEnumMap[instance.sport]!,
  'frequencyDayTime': instance.frequencyDayTime,
  'location': instance.location,
  'price': instance.price,
  'ageRange': instance.ageRange,
  'visibility': _$VisibilityEnumEnumMap[instance.visibility]!,
  'profilePicture': instance.profilePicture,
  'banner': instance.banner,
  'id': instance.id,
};

const _$SportsEnumEnumMap = {
  SportsEnum.football: 'FOOTBALL',
  SportsEnum.futsal: 'FUTSAL',
  SportsEnum.fut7: 'FUT7',
  SportsEnum.volleyball: 'VOLLEYBALL',
};

const _$VisibilityEnumEnumMap = {VisibilityEnum.private: 'private', VisibilityEnum.public: 'public'};

// **************************************************************************
// MyoroModelGenerator
// **************************************************************************

// coverage:ignore-file

/// Apply this mixin to [GameResponseDto] once the code is generated.
///
/// ```dart
/// class GameResponseDto with _$GameResponseDtoMixin {}
/// ```
mixin _$GameResponseDtoMixin {
  GameResponseDto get self => this as GameResponseDto;

  GameResponseDto copyWith({
    int? id,
    String? name,
    SportsEnum? sport,
    GameFrequencyDayTimeDto? frequencyDayTime,
    Location? location,
    GamePriceDto? price,
    GameAgeRangeModel? ageRange,
    VisibilityEnum? visibility,
    String? profilePicture,
    bool profilePictureProvided = true,
    String? banner,
    bool bannerProvided = true,
  }) {
    return GameResponseDto(
      id: id ?? self.id,
      name: name ?? self.name,
      sport: sport ?? self.sport,
      frequencyDayTime: frequencyDayTime ?? self.frequencyDayTime,
      location: location ?? self.location,
      price: price ?? self.price,
      ageRange: ageRange ?? self.ageRange,
      visibility: visibility ?? self.visibility,
      profilePicture: profilePictureProvided ? (profilePicture ?? self.profilePicture) : null,
      banner: bannerProvided ? (banner ?? self.banner) : null,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is GameResponseDto &&
        other.runtimeType == runtimeType &&
        other.id == self.id &&
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
      self.id,
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
      'GameResponseDto(\n'
      '  id: ${self.id},\n'
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
