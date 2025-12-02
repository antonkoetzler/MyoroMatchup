part of '../widget/user_details_screen.dart';

/// Body profile picture of [UserDetailsScreen].
final class _BodyProfilePicture extends StatelessWidget {
  /// Default constructor.
  const _BodyProfilePicture(this._user);

  /// User.
  final UserResponseDto _user;

  /// Build function.
  @override
  Widget build(context) {
    final themeExtension = context.resolveThemeExtension<UserDetailsScreenThemeExtension>();
    final profilePictureSize = themeExtension.profilePictureSize;

    final profilePicture = _user.profilePicture.isNotEmpty ? _user.profilePicture : MmImages.svgs.logo;

    return MyoroImage(path: profilePicture, width: profilePictureSize);
  }
}
