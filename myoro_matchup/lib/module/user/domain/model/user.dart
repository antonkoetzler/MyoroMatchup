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
  const User({required this.username});

  User.fake() : username = faker.internet.userName();

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  /// Username.
  @JsonKey(name: 'username')
  final String username;

  Map<String, dynamic> toJson() => _$UserToJson(this);
}
