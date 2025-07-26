import 'package:faker/faker.dart';
import 'package:myoro_matchup/myoro_matchup.dart';

/// Enum ensulating the types of forms in [LoginSignupScreen].
enum LoginSignupScreenEnum {
  /// Login.
  login,

  /// Signup.
  signup;

  factory LoginSignupScreenEnum.fake() {
    return values[faker.randomGenerator.integer(values.length)];
  }

  bool get isLogin => this == login;
  bool get isSignup => this == signup;
}
