part of '../widget/user_details_screen.dart';

/// Username of [UserDetailsScreen].
final class _BodyUsername extends StatelessWidget {
  /// Default constructor.
  const _BodyUsername(this._user);

  /// User.
  final UserResponseDto _user;

  /// Build function.
  @override
  Widget build(context) {
    final themeExtension = context.resolveThemeExtension<UserDetailsScreenThemeExtension>();
    final bodyUsernameTextStyle = themeExtension.bodyUsernameTextStyle;
    return Text(_user.username, style: bodyUsernameTextStyle);
  }
}
