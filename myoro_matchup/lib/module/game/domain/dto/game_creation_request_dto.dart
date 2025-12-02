import 'package:json_annotation/json_annotation.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_matchup/myoro_matchup.dart';

part 'game_creation_request_dto.g.dart';

/// DTO representing a game creation request.
@myoroModel
@JsonSerializable(createFactory: false, explicitToJson: true)
final class GameCreationRequestDto with _$GameCreationRequestDtoMixin {
  /// Default constructor.
  const GameCreationRequestDto({
    required this.name,
    required this.sport,
    required this.frequencyDayTime,
    required this.location,
    required this.price,
    required this.ageRange,
    required this.visibility,
    required this.profilePicture,
    required this.banner,
  });

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
  final String profilePicture;

  /// Banner of the [Game].
  final String banner;

  /// To JSON.
  Map<String, dynamic> toJson() {
    return _$GameCreationRequestDtoToJson(this);
  }
}
