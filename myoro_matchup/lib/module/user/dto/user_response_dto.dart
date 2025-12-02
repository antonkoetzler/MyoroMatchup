import 'package:faker/faker.dart';
import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:myoro_matchup/myoro_matchup.dart';

part 'user_response_dto.g.dart';

/// User response DTO.
@immutable
@myoroModel
@JsonSerializable(explicitToJson: true)
class UserResponseDto with _$UserResponseDtoMixin {
  /// Default constructor.
  const UserResponseDto({
    required this.id,
    required this.profilePicture,
    required this.name,
    required this.username,
    required this.stats,
    required this.location,
    required this.isSubscribed,
    required this.visibility,
  });

  /// Fake constructor.
  UserResponseDto.fake()
    : id = faker.randomGenerator.integer(999999),
      profilePicture = MmImages.cats.random,
      name = faker.person.name(),
      username = faker.internet.userName(),
      stats = UserSportStatsResponseDto.fake(),
      location = UserLocationResponseDto.fake(),
      isSubscribed = faker.randomGenerator.boolean(),
      visibility = VisibilityEnum.fake();

  /// From JSON.
  factory UserResponseDto.fromJson(Map<String, dynamic> json) {
    return _$UserResponseDtoFromJson(json);
  }

  /// User ID.
  final int id;

  /// Profile picture.
  @JsonKey(defaultValue: kMyoroEmptyString)
  final String profilePicture;

  /// Name.
  final String name;

  /// Username.
  final String username;

  /// Stats.
  final UserSportStatsResponseDto stats;

  /// Location.
  final UserLocationResponseDto location;

  /// Subscription status.
  final bool isSubscribed;

  /// Visibility.
  final VisibilityEnum visibility;

  /// To JSON.
  Map<String, dynamic> toJson() {
    return _$UserResponseDtoToJson(this);
  }
}
