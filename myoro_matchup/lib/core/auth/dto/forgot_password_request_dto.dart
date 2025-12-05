import 'package:faker/faker.dart';
import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';

part 'forgot_password_request_dto.g.dart';

/// Forgot password request.
@immutable
@myoroModel
@JsonSerializable(createFactory: false)
class ForgotPasswordRequestDto with _$ForgotPasswordRequestDtoMixin {
  /// Default constructor.
  const ForgotPasswordRequestDto({required this.email});

  /// Fake constructor.
  factory ForgotPasswordRequestDto.fake() {
    return ForgotPasswordRequestDto(email: faker.internet.email());
  }

  /// Email.
  final String email;

  Map<String, dynamic> toJson() {
    return _$ForgotPasswordRequestDtoToJson(this);
  }
}
