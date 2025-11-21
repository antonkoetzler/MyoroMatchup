// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserResponseDto _$UserResponseDtoFromJson(Map<String, dynamic> json) => UserResponseDto(
  profilePicture: json['profilePicture'] as String? ?? '',
  name: json['name'] as String,
  username: json['username'] as String,
  stats: UserSportStatsResponseDto.fromJson(json['stats'] as Map<String, dynamic>),
);

Map<String, dynamic> _$UserResponseDtoToJson(UserResponseDto instance) => <String, dynamic>{
  'profilePicture': instance.profilePicture,
  'name': instance.name,
  'username': instance.username,
  'stats': instance.stats,
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

  UserResponseDto copyWith({String? profilePicture, String? name, String? username, UserSportStatsResponseDto? stats}) {
    return UserResponseDto(
      profilePicture: profilePicture ?? self.profilePicture,
      name: name ?? self.name,
      username: username ?? self.username,
      stats: stats ?? self.stats,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is UserResponseDto &&
        other.runtimeType == runtimeType &&
        other.profilePicture == self.profilePicture &&
        other.name == self.name &&
        other.username == self.username &&
        other.stats == self.stats;
  }

  @override
  int get hashCode {
    return Object.hash(self.profilePicture, self.name, self.username, self.stats);
  }

  @override
  String toString() =>
      'UserResponseDto(\n'
      '  profilePicture: ${self.profilePicture},\n'
      '  name: ${self.name},\n'
      '  username: ${self.username},\n'
      '  stats: ${self.stats},\n'
      ');';
}
