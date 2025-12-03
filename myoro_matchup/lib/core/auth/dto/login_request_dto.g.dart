// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_request_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Map<String, dynamic> _$LoginRequestDtoToJson(LoginRequestDto instance) => <String, dynamic>{
  'username': ?instance.username,
  'email': ?instance.email,
  'password': instance.password,
};

// **************************************************************************
// MyoroModelGenerator
// **************************************************************************

// coverage:ignore-file

/// Apply this mixin to [LoginRequestDto] once the code is generated.
///
/// ```dart
/// class LoginRequestDto with _$LoginRequestDtoMixin {}
/// ```
mixin _$LoginRequestDtoMixin {
  LoginRequestDto get self => this as LoginRequestDto;

  LoginRequestDto copyWith({
    String? username,
    bool usernameProvided = true,
    String? email,
    bool emailProvided = true,
    String? password,
  }) {
    return LoginRequestDto(
      username: usernameProvided ? (username ?? self.username) : null,
      email: emailProvided ? (email ?? self.email) : null,
      password: password ?? self.password,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is LoginRequestDto &&
        other.runtimeType == runtimeType &&
        other.username == self.username &&
        other.email == self.email &&
        other.password == self.password;
  }

  @override
  int get hashCode {
    return Object.hash(self.username, self.email, self.password);
  }

  @override
  String toString() =>
      'LoginRequestDto(\n'
      '  username: ${self.username},\n'
      '  email: ${self.email},\n'
      '  password: ${self.password},\n'
      ');';
}
