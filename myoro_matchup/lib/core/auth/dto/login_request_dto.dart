import 'package:faker/faker.dart';
import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';

part 'login_request_dto.g.dart';

/// Login request.
@immutable
@myoroModel
@JsonSerializable(createFactory: false)
class LoginRequestDto with _$LoginRequestDtoMixin {
  /// Default constructor.
  const LoginRequestDto({required this.username, required this.email, required this.password})
    : assert((username != null) ^ (email != null), '[LoginRequest]: [username] (x)or [email] cannot be null.');

  /// Fake constructor.
  factory LoginRequestDto.fake() {
    return LoginRequestDto(
      username: faker.internet.userName(),
      email: faker.internet.email(),
      password: faker.internet.password(),
    );
  }

  /// Username.
  @JsonKey(includeIfNull: false)
  final String? username;

  /// Email.
  @JsonKey(includeIfNull: false)
  final String? email;

  /// Password.
  final String password;

  Map<String, dynamic> toJson() {
    return _$LoginRequestDtoToJson(this);
  }
}
