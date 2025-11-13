import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';

part 'login_request.g.dart';

/// Login request.
@immutable
@myoroModel
@JsonSerializable(createFactory: false)
class LoginRequest with _$LoginRequestMixin {
  /// Default constructor.
  const LoginRequest({required this.username, required this.email, required this.password})
    : assert((username != null) ^ (email != null), '[LoginRequest]: [username] (x)or [email] cannot be null.');

  /// Username.
  @JsonKey(includeIfNull: false)
  final String? username;

  /// Email.
  @JsonKey(includeIfNull: false)
  final String? email;

  /// Password.
  final String password;

  Map<String, dynamic> toJson() {
    return _$LoginRequestToJson(this);
  }
}
