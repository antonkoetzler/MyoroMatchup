// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Map<String, dynamic> _$LoginRequestToJson(LoginRequest instance) => <String, dynamic>{
  'username': instance.username,
  'email': instance.email,
  'password': instance.password,
};

// **************************************************************************
// MyoroModelGenerator
// **************************************************************************

// coverage:ignore-file

/// Apply this mixin to [LoginRequest] once the code is generated.
///
/// ```dart
/// class LoginRequest with _$LoginRequestMixin {}
/// ```
mixin _$LoginRequestMixin {
  LoginRequest get self => this as LoginRequest;

  LoginRequest copyWith({
    String? username,
    bool usernameProvided = true,
    String? email,
    bool emailProvided = true,
    String? password,
  }) {
    return LoginRequest(
      username: usernameProvided ? (username ?? self.username) : null,
      email: emailProvided ? (email ?? self.email) : null,
      password: password ?? self.password,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is LoginRequest &&
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
      'LoginRequest(\n'
      '  username: ${self.username},\n'
      '  email: ${self.email},\n'
      '  password: ${self.password},\n'
      ');';
}
