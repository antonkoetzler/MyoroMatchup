// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

User _$UserFromJson(Map<String, dynamic> json) =>
    User(id: (json['id'] as num).toInt(), token: json['token'] as String?, username: json['username'] as String);

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
  'id': instance.id,
  'token': instance.token,
  'username': instance.username,
};

// **************************************************************************
// MyoroModelGenerator
// **************************************************************************

// coverage:ignore-file

/// Apply this mixin to [User] once the code is generated.
///
/// ```dart
/// class User with _$UserMixin {}
/// ```
mixin _$UserMixin {
  User get self => this as User;

  User copyWith({int? id, String? token, bool tokenProvided = true, String? username}) {
    return User(
      id: id ?? self.id,
      token: tokenProvided ? (token ?? self.token) : null,
      username: username ?? self.username,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is User &&
        other.runtimeType == runtimeType &&
        other.id == self.id &&
        other.token == self.token &&
        other.username == self.username;
  }

  @override
  int get hashCode {
    return Object.hash(self.id, self.token, self.username);
  }

  @override
  String toString() =>
      'User(\n'
      '  id: ${self.id},\n'
      '  token: ${self.token},\n'
      '  username: ${self.username},\n'
      ');';
}
