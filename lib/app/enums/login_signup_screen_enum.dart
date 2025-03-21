import 'package:faker/faker.dart';
import 'package:myoro_matchup/myoro_matchup.dart';

/// Enum used to set the state of [LoginSignupScreen] (login or signup modes).
enum LoginSignupScreenEnum {
  login,
  signup;

  factory LoginSignupScreenEnum.fake() {
    return values[faker.randomGenerator.integer(values.length)];
  }

  bool get isLogin => this == login;
  bool get isSignup => this == signup;
}
