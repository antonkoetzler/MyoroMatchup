part of '../login_signup_screen.dart';

/// Logo of [LoginSignupScreen].
final class _Logo extends StatelessWidget {
  const _Logo();

  @override
  Widget build(_) {
    // TODO
    return Image.asset(kTestProfilePictures[faker.randomGenerator.integer(kTestProfilePictures.length)]);
  }
}
