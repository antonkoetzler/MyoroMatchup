import 'package:json_annotation/json_annotation.dart';

part 'player_rating_request_dto.g.dart';

/// DTO for submitting a player rating.
///
/// TODO: Complete implementation:
/// - Connect to backend API
/// - Add validation (1-10 stars)
/// - Track rating deadline (24hrs after game)
@JsonSerializable()
final class PlayerRatingRequestDto {
  /// Default constructor.
  const PlayerRatingRequestDto({required this.gameId, required this.ratedUserId, required this.stars});

  /// From JSON.
  factory PlayerRatingRequestDto.fromJson(Map<String, dynamic> json) {
    return _$PlayerRatingRequestDtoFromJson(json);
  }

  /// Game ID the rating is for.
  final int gameId;

  /// User ID being rated.
  final int ratedUserId;

  /// Star rating (1-10).
  final int stars;

  /// To JSON.
  Map<String, dynamic> toJson() => _$PlayerRatingRequestDtoToJson(this);
}
