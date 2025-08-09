part of 'game_creation_screen_view_model.dart';

/// State of [GameCreationScreenViewModel].
final class GameCreationScreenState {
  /// Banner field.
  String? bannerPicture;

  /// Profile picture field.
  String? profilePicture;

  /// Name field.
  String? name;

  /// Sport field.
  SportsEnum? sport;

  /// Competitiveness field.
  CompetitivenessEnum? competitiveness;

  /// Player quantity field.
  int? playerQuantity;

  /// One time price field.
  double? oneTimePrice;

  /// Monthly price field.
  double? monthlyPrice;

  /// Age range field.
  (double, double)? minAgeRange;

  /// Visibility field.
  bool? visibility;

  /// Location field.
  String? location;

  /// Frequency, date, and time field.
  String? frequencyDateTime;
}
