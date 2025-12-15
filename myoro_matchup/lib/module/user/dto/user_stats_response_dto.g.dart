// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_stats_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserFootballStatsResponseDto _$UserFootballStatsResponseDtoFromJson(Map<String, dynamic> json) =>
    UserFootballStatsResponseDto(
      rating: (json['rating'] as num).toInt(),
      attack: (json['attack'] as num).toInt(),
      defense: (json['defense'] as num).toInt(),
      striking: (json['striking'] as num).toInt(),
      skills: (json['skills'] as num).toInt(),
    );

Map<String, dynamic> _$UserFootballStatsResponseDtoToJson(UserFootballStatsResponseDto instance) => <String, dynamic>{
  'rating': instance.rating,
  'attack': instance.attack,
  'defense': instance.defense,
  'striking': instance.striking,
  'skills': instance.skills,
};

UserFut7StatsResponseDto _$UserFut7StatsResponseDtoFromJson(Map<String, dynamic> json) => UserFut7StatsResponseDto(
  rating: (json['rating'] as num).toInt(),
  attack: (json['attack'] as num).toInt(),
  defense: (json['defense'] as num).toInt(),
  striking: (json['striking'] as num).toInt(),
  skills: (json['skills'] as num).toInt(),
);

Map<String, dynamic> _$UserFut7StatsResponseDtoToJson(UserFut7StatsResponseDto instance) => <String, dynamic>{
  'rating': instance.rating,
  'attack': instance.attack,
  'defense': instance.defense,
  'striking': instance.striking,
  'skills': instance.skills,
};

UserFutsalStatsResponseDto _$UserFutsalStatsResponseDtoFromJson(Map<String, dynamic> json) =>
    UserFutsalStatsResponseDto(
      rating: (json['rating'] as num).toInt(),
      attack: (json['attack'] as num).toInt(),
      defense: (json['defense'] as num).toInt(),
      striking: (json['striking'] as num).toInt(),
      skills: (json['skills'] as num).toInt(),
    );

Map<String, dynamic> _$UserFutsalStatsResponseDtoToJson(UserFutsalStatsResponseDto instance) => <String, dynamic>{
  'rating': instance.rating,
  'attack': instance.attack,
  'defense': instance.defense,
  'striking': instance.striking,
  'skills': instance.skills,
};

UserVolleyballStatsResponseDto _$UserVolleyballStatsResponseDtoFromJson(Map<String, dynamic> json) =>
    UserVolleyballStatsResponseDto(
      rating: (json['rating'] as num).toInt(),
      attack: (json['attack'] as num).toInt(),
      blocking: (json['blocking'] as num).toInt(),
      serving: (json['serving'] as num).toInt(),
      reception: (json['reception'] as num).toInt(),
    );

Map<String, dynamic> _$UserVolleyballStatsResponseDtoToJson(UserVolleyballStatsResponseDto instance) =>
    <String, dynamic>{
      'rating': instance.rating,
      'attack': instance.attack,
      'blocking': instance.blocking,
      'serving': instance.serving,
      'reception': instance.reception,
    };

// **************************************************************************
// MyoroModelGenerator
// **************************************************************************

// coverage:ignore-file

/// Apply this mixin to [UserFootballStatsResponseDto] once the code is generated.
///
/// ```dart
/// class UserFootballStatsResponseDto with _$UserFootballStatsResponseDtoMixin {}
/// ```
mixin _$UserFootballStatsResponseDtoMixin {
  UserFootballStatsResponseDto get self => this as UserFootballStatsResponseDto;

  UserFootballStatsResponseDto copyWith({int? attack, int? defense, int? striking, int? skills, int? rating}) {
    return UserFootballStatsResponseDto(
      attack: attack ?? self.attack,
      defense: defense ?? self.defense,
      striking: striking ?? self.striking,
      skills: skills ?? self.skills,
      rating: rating ?? self.rating,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is UserFootballStatsResponseDto &&
        other.runtimeType == runtimeType &&
        other.attack == self.attack &&
        other.defense == self.defense &&
        other.striking == self.striking &&
        other.skills == self.skills &&
        other.rating == self.rating;
  }

  @override
  int get hashCode {
    return Object.hash(self.attack, self.defense, self.striking, self.skills, self.rating);
  }

  @override
  String toString() =>
      'UserFootballStatsResponseDto(\n'
      '  attack: ${self.attack},\n'
      '  defense: ${self.defense},\n'
      '  striking: ${self.striking},\n'
      '  skills: ${self.skills},\n'
      '  rating: ${self.rating},\n'
      ');';
}

// coverage:ignore-file

/// Apply this mixin to [UserFut7StatsResponseDto] once the code is generated.
///
/// ```dart
/// class UserFut7StatsResponseDto with _$UserFut7StatsResponseDtoMixin {}
/// ```
mixin _$UserFut7StatsResponseDtoMixin {
  UserFut7StatsResponseDto get self => this as UserFut7StatsResponseDto;

  UserFut7StatsResponseDto copyWith({int? attack, int? defense, int? striking, int? skills, int? rating}) {
    return UserFut7StatsResponseDto(
      attack: attack ?? self.attack,
      defense: defense ?? self.defense,
      striking: striking ?? self.striking,
      skills: skills ?? self.skills,
      rating: rating ?? self.rating,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is UserFut7StatsResponseDto &&
        other.runtimeType == runtimeType &&
        other.attack == self.attack &&
        other.defense == self.defense &&
        other.striking == self.striking &&
        other.skills == self.skills &&
        other.rating == self.rating;
  }

  @override
  int get hashCode {
    return Object.hash(self.attack, self.defense, self.striking, self.skills, self.rating);
  }

  @override
  String toString() =>
      'UserFut7StatsResponseDto(\n'
      '  attack: ${self.attack},\n'
      '  defense: ${self.defense},\n'
      '  striking: ${self.striking},\n'
      '  skills: ${self.skills},\n'
      '  rating: ${self.rating},\n'
      ');';
}

// coverage:ignore-file

/// Apply this mixin to [UserFutsalStatsResponseDto] once the code is generated.
///
/// ```dart
/// class UserFutsalStatsResponseDto with _$UserFutsalStatsResponseDtoMixin {}
/// ```
mixin _$UserFutsalStatsResponseDtoMixin {
  UserFutsalStatsResponseDto get self => this as UserFutsalStatsResponseDto;

  UserFutsalStatsResponseDto copyWith({int? attack, int? defense, int? striking, int? skills, int? rating}) {
    return UserFutsalStatsResponseDto(
      attack: attack ?? self.attack,
      defense: defense ?? self.defense,
      striking: striking ?? self.striking,
      skills: skills ?? self.skills,
      rating: rating ?? self.rating,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is UserFutsalStatsResponseDto &&
        other.runtimeType == runtimeType &&
        other.attack == self.attack &&
        other.defense == self.defense &&
        other.striking == self.striking &&
        other.skills == self.skills &&
        other.rating == self.rating;
  }

  @override
  int get hashCode {
    return Object.hash(self.attack, self.defense, self.striking, self.skills, self.rating);
  }

  @override
  String toString() =>
      'UserFutsalStatsResponseDto(\n'
      '  attack: ${self.attack},\n'
      '  defense: ${self.defense},\n'
      '  striking: ${self.striking},\n'
      '  skills: ${self.skills},\n'
      '  rating: ${self.rating},\n'
      ');';
}

// coverage:ignore-file

/// Apply this mixin to [UserVolleyballStatsResponseDto] once the code is generated.
///
/// ```dart
/// class UserVolleyballStatsResponseDto with _$UserVolleyballStatsResponseDtoMixin {}
/// ```
mixin _$UserVolleyballStatsResponseDtoMixin {
  UserVolleyballStatsResponseDto get self => this as UserVolleyballStatsResponseDto;

  UserVolleyballStatsResponseDto copyWith({int? attack, int? blocking, int? serving, int? reception, int? rating}) {
    return UserVolleyballStatsResponseDto(
      attack: attack ?? self.attack,
      blocking: blocking ?? self.blocking,
      serving: serving ?? self.serving,
      reception: reception ?? self.reception,
      rating: rating ?? self.rating,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is UserVolleyballStatsResponseDto &&
        other.runtimeType == runtimeType &&
        other.attack == self.attack &&
        other.blocking == self.blocking &&
        other.serving == self.serving &&
        other.reception == self.reception &&
        other.rating == self.rating;
  }

  @override
  int get hashCode {
    return Object.hash(self.attack, self.blocking, self.serving, self.reception, self.rating);
  }

  @override
  String toString() =>
      'UserVolleyballStatsResponseDto(\n'
      '  attack: ${self.attack},\n'
      '  blocking: ${self.blocking},\n'
      '  serving: ${self.serving},\n'
      '  reception: ${self.reception},\n'
      '  rating: ${self.rating},\n'
      ');';
}
