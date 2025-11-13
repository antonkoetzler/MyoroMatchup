import 'package:faker/faker.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_matchup/myoro_matchup.dart';

part 'game_response_dto.g.dart';

/// DTO representing a game response.
@myoroModel
@JsonSerializable()
final class GameResponseDto extends GameAbstract with _$GameResponseDtoMixin {
  /// Default constructor.
  const GameResponseDto({
    required super.name,
    required super.sport,
    required super.frequencyDayTime,
    required super.location,
    required super.price,
    required super.ageRange,
    required super.visibility,
    required super.profilePicture,
    required super.banner,
    required this.id,
  });

  /// Fake constructor.
  factory GameResponseDto.fake() {
    return GameResponseDto(
      name: faker.lorem.word(),
      sport: faker.randomGenerator.element(SportsEnum.values),
      frequencyDayTime: GameFrequencyDayTimeDto.fake(),
      location: Location.fake(),
      price: GamePriceDto.fake(),
      ageRange: GameAgeRangeModel.fake(),
      visibility: GameVisibilityEnum.fake(),
      profilePicture: kTestProfilePictures[faker.randomGenerator.integer(kTestProfilePictures.length - 1)],
      banner: kTestBanners[faker.randomGenerator.integer(kTestBanners.length - 1)],
      id: faker.randomGenerator.integer(1000000),
    );
  }

  /// From JSON.
  factory GameResponseDto.fromJson(Map<String, dynamic> json) {
    return _$GameResponseDtoFromJson(json);
  }

  /// ID of the [Game].
  final int id;

  /// To JSON.
  Map<String, dynamic> toJson() {
    return _$GameResponseDtoToJson(this);
  }
}
