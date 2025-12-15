import 'package:faker/faker.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:myoro_matchup/myoro_matchup.dart';

part 'game_response_dto.g.dart';

/// DTO representing a game response.
@myoroModel
@JsonSerializable()
final class GameResponseDto with _$GameResponseDtoMixin {
  /// Default constructor.
  const GameResponseDto({
    required this.name,
    required this.sport,
    required this.frequencyDayTime,
    required this.location,
    required this.price,
    required this.ageRange,
    required this.visibility,
    required this.profilePicture,
    required this.banner,
    required this.id,
  });

  /// Fake constructor.
  factory GameResponseDto.fake() {
    return GameResponseDto(
      name: faker.lorem.word(),
      sport: faker.randomGenerator.element(SportsEnum.values),
      frequencyDayTime: GameFrequencyDayTimeDto.fake(),
      location: LocationResponseDto.fake(),
      price: GamePriceDto.fake(),
      ageRange: GameAgeRangeModel.fake(),
      visibility: VisibilityEnum.fake(),
      profilePicture: MmImages.cats.random,
      banner: MmImages.testBanners.random,
      id: faker.randomGenerator.integer(1000000),
    );
  }

  /// From JSON.
  factory GameResponseDto.fromJson(Map<String, dynamic> json) {
    return _$GameResponseDtoFromJson(json);
  }

  /// ID of the [Game].
  final int id;

  /// Name of the [Game].
  final String name;

  /// Sport being played.
  final SportsEnum sport;

  /// Frequency of the game.
  final GameFrequencyDayTimeDto frequencyDayTime;

  /// Location of the game.
  final LocationResponseDto location;

  /// Price of the game.
  final GamePriceDto price;

  /// Age range of the [Game].
  final GameAgeRangeModel ageRange;

  /// Visibility of the [Game].
  final VisibilityEnum visibility;

  /// Profile picture of the [Game].
  @JsonKey(defaultValue: kMyoroEmptyString)
  final String profilePicture;

  /// Banner of the [Game].
  @JsonKey(defaultValue: kMyoroEmptyString)
  final String banner;

  /// To JSON.
  Map<String, dynamic> toJson() {
    return _$GameResponseDtoToJson(this);
  }
}
