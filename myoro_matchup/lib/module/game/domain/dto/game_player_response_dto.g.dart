// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game_player_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GamePlayerResponseDto _$GamePlayerResponseDtoFromJson(
  Map<String, dynamic> json,
) => GamePlayerResponseDto(
  id: (json['id'] as num).toInt(),
  username: json['username'] as String,
  name: json['name'] as String,
);

Map<String, dynamic> _$GamePlayerResponseDtoToJson(
  GamePlayerResponseDto instance,
) => <String, dynamic>{
  'id': instance.id,
  'username': instance.username,
  'name': instance.name,
};

// **************************************************************************
// MyoroModelGenerator
// **************************************************************************

// coverage:ignore-file

/// Apply this mixin to [GamePlayerResponseDto] once the code is generated.
///
/// ```dart
/// class GamePlayerResponseDto with _$GamePlayerResponseDtoMixin {}
/// ```
mixin _$GamePlayerResponseDtoMixin {
  GamePlayerResponseDto get self => this as GamePlayerResponseDto;

  GamePlayerResponseDto copyWith({int? id, String? username, String? name}) {
    return GamePlayerResponseDto(
      id: id ?? self.id,
      username: username ?? self.username,
      name: name ?? self.name,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is GamePlayerResponseDto &&
        other.runtimeType == runtimeType &&
        other.id == self.id &&
        other.username == self.username &&
        other.name == self.name;
  }

  @override
  int get hashCode {
    return Object.hash(self.id, self.username, self.name);
  }

  @override
  String toString() =>
      'GamePlayerResponseDto(\n'
      '  id: ${self.id},\n'
      '  username: ${self.username},\n'
      '  name: ${self.name},\n'
      ');';
}
