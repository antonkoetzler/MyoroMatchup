// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'signup_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Map<String, dynamic> _$SignupRequestToJson(SignupRequest instance) => <String, dynamic>{
  'username': instance.username,
  'name': instance.name,
  'email': instance.email,
  'password': instance.password,
};

// **************************************************************************
// MyoroModelGenerator
// **************************************************************************

// coverage:ignore-file

/// Apply this mixin to [SignupRequest] once the code is generated.
///
/// ```dart
/// class SignupRequest with _$SignupRequestMixin {}
/// ```
mixin _$SignupRequestMixin {
  SignupRequest get self => this as SignupRequest;

  SignupRequest copyWith({String? username, String? name, String? email, String? password}) {
    return SignupRequest(
      username: username ?? self.username,
      name: name ?? self.name,
      email: email ?? self.email,
      password: password ?? self.password,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is SignupRequest &&
        other.runtimeType == runtimeType &&
        other.username == self.username &&
        other.name == self.name &&
        other.email == self.email &&
        other.password == self.password;
  }

  @override
  int get hashCode {
    return Object.hash(self.username, self.name, self.email, self.password);
  }

  @override
  String toString() =>
      'SignupRequest(\n'
      '  username: ${self.username},\n'
      '  name: ${self.name},\n'
      '  email: ${self.email},\n'
      '  password: ${self.password},\n'
      ');';
}
