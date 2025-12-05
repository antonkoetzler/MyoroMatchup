import 'package:faker/faker.dart';
import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'signup_request_dto.g.dart';

/// Signup request.
@immutable
@myoroModel
@JsonSerializable(createFactory: false)
class SignupRequestDto with _$SignupRequestDtoMixin {
  /// Default constructor.
  const SignupRequestDto({
    required this.username,
    required this.name,
    required this.email,
    required this.country,
    required this.password,
  });

  /// Fake constructor.
  factory SignupRequestDto.fake() {
    return SignupRequestDto(
      username: faker.internet.userName(),
      name: faker.person.name(),
      email: faker.internet.email(),
      country: myoroFake<MyoroCountryEnum>(),
      password: faker.internet.password(),
    );
  }

  /// Username.
  final String username;

  /// Name.
  final String name;

  /// Email.
  final String email;

  /// Location.
  final MyoroCountryEnum country;

  /// Password.
  final String password;

  Map<String, dynamic> toJson() {
    return _$SignupRequestDtoToJson(this);
  }
}
