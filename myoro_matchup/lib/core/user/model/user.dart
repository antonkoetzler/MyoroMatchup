import 'package:faker/faker.dart';
import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';

part 'user.g.dart';

/// User model.
@immutable
@myoroModel
@JsonSerializable()
final class User with _$UserMixin {
  static const idJsonKey = 'id';
  static const usernameJsonKey = 'username';

  const User({required this.id, required this.username});

  User.fake() : id = faker.randomGenerator.integer(1000000), username = faker.internet.userName();

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  /// ID.
  final int id;

  /// Username.
  final String username;

  Map<String, dynamic> toJson() => _$UserToJson(this);
}
