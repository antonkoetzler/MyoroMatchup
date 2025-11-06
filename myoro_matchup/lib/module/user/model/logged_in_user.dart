import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';

part 'logged_in_user.g.dart';

/// Logged in user model.
@immutable
@myoroModel
@JsonSerializable()
final class LoggedInUser with _$LoggedInUserMixin {
  /// Default constructor.
  const LoggedInUser({required this.id, required this.token});

  /// ID.
  final int id;

  /// Token.
  final String token;

  /// From JSON.
  factory LoggedInUser.fromJson(Map<String, dynamic> json) {
    return _$LoggedInUserFromJson(json);
  }

  /// To JSON.
  Map<String, dynamic> toJson() {
    return _$LoggedInUserToJson(this);
  }
}
