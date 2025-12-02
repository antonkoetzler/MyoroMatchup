part of '../home_screen.dart';

/// Profile picture of [_BodyUserSportStatsPlayerCard].
final class _BodyUserSportStatsPlayerCardProfilePicture extends StatelessWidget {
  /// Default constructor.
  const _BodyUserSportStatsPlayerCardProfilePicture(this._user);

  /// User.
  final UserResponseDto _user;

  @override
  Widget build(context) {
    final themeExtension = context.resolveThemeExtension<HomeScreenThemeExtension>();
    final bodyUserSportStatsPlayerCardProfilePictureSize =
        themeExtension.bodyUserSportStatsPlayerCardProfilePictureSize;
    final profilePicture = _user.profilePicture.isNotEmpty ? _user.profilePicture : MmImages.svgs.logo;
    return MyoroImage(path: profilePicture, height: bodyUserSportStatsPlayerCardProfilePictureSize);
  }
}
