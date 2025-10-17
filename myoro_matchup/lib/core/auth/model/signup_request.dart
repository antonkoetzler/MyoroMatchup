import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';

part 'signup_request.g.dart';

/// Signup request.
@immutable
@myoroModel
@JsonSerializable(createFactory: false)
class SignupRequest with _$SignupRequestMixin {
  /// Default constructor.
  const SignupRequest({required this.username, required this.name, required this.email, required this.password});

  /// Username.
  final String username;

  /// Name.
  final String name;

  /// Email.
  final String email;

  /// Password.
  final String password;

  Map<String, dynamic> toJson() {
    return _$SignupRequestToJson(this);
  }
}
