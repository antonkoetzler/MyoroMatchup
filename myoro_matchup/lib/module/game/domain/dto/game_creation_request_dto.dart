import 'package:json_annotation/json_annotation.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_matchup/myoro_matchup.dart';

part 'game_creation_request_dto.g.dart';

/// DTO representing a game creation request.
@myoroModel
@JsonSerializable(createFactory: false, explicitToJson: true)
final class GameCreationRequestDto extends GameModel with _$GameCreationRequestDtoMixin {
  /// Default constructor.
  const GameCreationRequestDto({
    required super.name,
    required super.sport,
    required super.frequencyDayTime,
    required super.location,
    required super.price,
    required super.ageRange,
    required super.visibility,
    required super.profilePicture,
    required super.banner,
  });

  /// To JSON.
  Map<String, dynamic> toJson() {
    return _$GameCreationRequestDtoToJson(this);
  }
}
