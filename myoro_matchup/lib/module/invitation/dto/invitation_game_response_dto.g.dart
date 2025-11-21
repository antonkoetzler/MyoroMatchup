// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'invitation_game_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InvitationGameResponseDto _$InvitationGameResponseDtoFromJson(Map<String, dynamic> json) =>
    InvitationGameResponseDto(name: json['name'] as String, sport: $enumDecode(_$SportsEnumEnumMap, json['sport']));

const _$SportsEnumEnumMap = {
  SportsEnum.football: 'FOOTBALL',
  SportsEnum.futsal: 'FUTSAL',
  SportsEnum.fut7: 'FUT7',
  SportsEnum.volleyball: 'VOLLEYBALL',
};

// **************************************************************************
// MyoroModelGenerator
// **************************************************************************

// coverage:ignore-file

/// Apply this mixin to [InvitationGameResponseDto] once the code is generated.
///
/// ```dart
/// class InvitationGameResponseDto with _$InvitationGameResponseDtoMixin {}
/// ```
mixin _$InvitationGameResponseDtoMixin {
  InvitationGameResponseDto get self => this as InvitationGameResponseDto;

  InvitationGameResponseDto copyWith({String? name, SportsEnum? sport}) {
    return InvitationGameResponseDto(name: name ?? self.name, sport: sport ?? self.sport);
  }

  @override
  bool operator ==(Object other) {
    return other is InvitationGameResponseDto &&
        other.runtimeType == runtimeType &&
        other.name == self.name &&
        other.sport == self.sport;
  }

  @override
  int get hashCode {
    return Object.hash(self.name, self.sport);
  }

  @override
  String toString() =>
      'InvitationGameResponseDto(\n'
      '  name: ${self.name},\n'
      '  sport: ${self.sport},\n'
      ');';
}
