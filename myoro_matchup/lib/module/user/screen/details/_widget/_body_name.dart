part of '../widget/user_details_screen.dart';

/// Name of [UserDetailsScreen].
final class _BodyName extends StatelessWidget {
  /// Default constructor.
  const _BodyName(this._user);

  /// User.
  final UserResponseDto _user;

  /// Build function.
  @override
  Widget build(context) {
    final themeExtension = context.resolveThemeExtension<UserDetailsScreenThemeExtension>();
    final bodyNameTextStyle = themeExtension.bodyNameTextStyle;
    return Text(_user.name, style: bodyNameTextStyle);
  }
}
