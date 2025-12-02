// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'logged_in_user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoggedInUser _$LoggedInUserFromJson(Map<String, dynamic> json) => LoggedInUser(
  id: (json['id'] as num).toInt(),
  token: json['token'] as String,
);

Map<String, dynamic> _$LoggedInUserToJson(LoggedInUser instance) =>
    <String, dynamic>{'id': instance.id, 'token': instance.token};

// **************************************************************************
// MyoroModelGenerator
// **************************************************************************

// coverage:ignore-file

/// Apply this mixin to [LoggedInUser] once the code is generated.
///
/// ```dart
/// class LoggedInUser with _$LoggedInUserMixin {}
/// ```
mixin _$LoggedInUserMixin {
  LoggedInUser get self => this as LoggedInUser;

  LoggedInUser copyWith({int? id, String? token}) {
    return LoggedInUser(id: id ?? self.id, token: token ?? self.token);
  }

  @override
  bool operator ==(Object other) {
    return other is LoggedInUser &&
        other.runtimeType == runtimeType &&
        other.id == self.id &&
        other.token == self.token;
  }

  @override
  int get hashCode {
    return Object.hash(self.id, self.token);
  }

  @override
  String toString() =>
      'LoggedInUser(\n'
      '  id: ${self.id},\n'
      '  token: ${self.token},\n'
      ');';
}
