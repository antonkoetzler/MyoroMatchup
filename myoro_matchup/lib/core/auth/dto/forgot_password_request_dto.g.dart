// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forgot_password_request_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Map<String, dynamic> _$ForgotPasswordRequestDtoToJson(ForgotPasswordRequestDto instance) => <String, dynamic>{
  'email': instance.email,
};

// **************************************************************************
// MyoroModelGenerator
// **************************************************************************

// coverage:ignore-file

/// Apply this mixin to [ForgotPasswordRequestDto] once the code is generated.
///
/// ```dart
/// class ForgotPasswordRequestDto with _$ForgotPasswordRequestDtoMixin {}
/// ```
mixin _$ForgotPasswordRequestDtoMixin {
  ForgotPasswordRequestDto get self => this as ForgotPasswordRequestDto;

  ForgotPasswordRequestDto copyWith({String? email}) {
    return ForgotPasswordRequestDto(email: email ?? self.email);
  }

  @override
  bool operator ==(Object other) {
    return other is ForgotPasswordRequestDto && other.runtimeType == runtimeType && other.email == self.email;
  }

  @override
  int get hashCode {
    return Object.hashAll([self.email]);
  }

  @override
  String toString() =>
      'ForgotPasswordRequestDto(\n'
      '  email: ${self.email},\n'
      ');';
}
