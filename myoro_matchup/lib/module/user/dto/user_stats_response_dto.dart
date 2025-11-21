import 'package:faker/faker.dart';
import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_matchup/myoro_matchup.dart';

part 'user_football_stats_response_dto.dart';
part 'user_fut7_stats_response_dto.dart';
part 'user_futsal_stats_response_dto.dart';
part 'user_stats_response_dto.g.dart';
part 'user_volleyball_stats_response_dto.dart';

/// Response DTO holding the user's status for a certain sport
@immutable
sealed class UserStatsResponseDto {
  /// Default constructor.
  const UserStatsResponseDto({required this.rating});

  /// Rating out of 100.
  final int rating;

  /// To JSON.
  Map<String, dynamic> toJson();
}
