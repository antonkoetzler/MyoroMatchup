import 'package:faker/faker.dart';

/// Enum used to set the state of [LoginScreen] (login or signup modes).
enum LoginScreenEnum {
  login,
  signup;

  factory LoginScreenEnum.fake() {
    return values[faker.randomGenerator.integer(values.length)];
  }

  bool get isLogin => this == login;
  bool get isSignup => this == signup;
}
