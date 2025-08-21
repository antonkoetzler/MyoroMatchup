// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

User _$UserFromJson(Map<String, dynamic> json) =>
    User(username: json['username'] as String);

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
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

  User copyWith({String? username}) {
    return User(username: username ?? self.username);
  }

  @override
  bool operator ==(Object other) {
    return other is User &&
        other.runtimeType == runtimeType &&
        other.username == self.username;
  }

  @override
  int get hashCode {
    return Object.hashAll([self.username]);
  }

  @override
  String toString() =>
      'User(\n'
      '  username: ${self.username},\n'
      ');';
}
