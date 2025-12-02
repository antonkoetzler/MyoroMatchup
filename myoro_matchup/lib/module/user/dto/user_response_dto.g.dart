// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserResponseDto _$UserResponseDtoFromJson(Map<String, dynamic> json) =>
    UserResponseDto(
      id: (json['id'] as num).toInt(),
      profilePicture: json['profilePicture'] as String? ?? '',
      name: json['name'] as String,
      username: json['username'] as String,
      stats: UserSportStatsResponseDto.fromJson(
        json['stats'] as Map<String, dynamic>,
      ),
      location: UserLocationResponseDto.fromJson(
        json['location'] as Map<String, dynamic>,
      ),
      isSubscribed: json['isSubscribed'] as bool,
      visibility: $enumDecode(_$VisibilityEnumEnumMap, json['visibility']),
    );

Map<String, dynamic> _$UserResponseDtoToJson(UserResponseDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'profilePicture': instance.profilePicture,
      'name': instance.name,
      'username': instance.username,
      'stats': instance.stats.toJson(),
      'location': instance.location.toJson(),
      'isSubscribed': instance.isSubscribed,
      'visibility': _$VisibilityEnumEnumMap[instance.visibility]!,
    };

const _$VisibilityEnumEnumMap = {
  VisibilityEnum.private: 'PRIVATE',
  VisibilityEnum.public: 'PUBLIC',
};

// **************************************************************************
// MyoroModelGenerator
// **************************************************************************

// coverage:ignore-file

/// Apply this mixin to [UserResponseDto] once the code is generated.
///
/// ```dart
/// class UserResponseDto with _$UserResponseDtoMixin {}
/// ```
mixin _$UserResponseDtoMixin {
  UserResponseDto get self => this as UserResponseDto;

  UserResponseDto copyWith({
    int? id,
    String? profilePicture,
    String? name,
    String? username,
    UserSportStatsResponseDto? stats,
    UserLocationResponseDto? location,
    bool? isSubscribed,
    VisibilityEnum? visibility,
  }) {
    return UserResponseDto(
      id: id ?? self.id,
      profilePicture: profilePicture ?? self.profilePicture,
      name: name ?? self.name,
      username: username ?? self.username,
      stats: stats ?? self.stats,
      location: location ?? self.location,
      isSubscribed: isSubscribed ?? self.isSubscribed,
      visibility: visibility ?? self.visibility,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is UserResponseDto &&
        other.runtimeType == runtimeType &&
        other.id == self.id &&
        other.profilePicture == self.profilePicture &&
        other.name == self.name &&
        other.username == self.username &&
        other.stats == self.stats &&
        other.location == self.location &&
        other.isSubscribed == self.isSubscribed &&
        other.visibility == self.visibility;
  }

  @override
  int get hashCode {
    return Object.hash(
      self.id,
      self.profilePicture,
      self.name,
      self.username,
      self.stats,
      self.location,
      self.isSubscribed,
      self.visibility,
    );
  }

  @override
  String toString() =>
      'UserResponseDto(\n'
      '  id: ${self.id},\n'
      '  profilePicture: ${self.profilePicture},\n'
      '  name: ${self.name},\n'
      '  username: ${self.username},\n'
      '  stats: ${self.stats},\n'
      '  location: ${self.location},\n'
      '  isSubscribed: ${self.isSubscribed},\n'
      '  visibility: ${self.visibility},\n'
      ');';
}
