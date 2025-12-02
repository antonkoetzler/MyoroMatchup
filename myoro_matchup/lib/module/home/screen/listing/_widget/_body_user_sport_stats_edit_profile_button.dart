part of '../home_screen.dart';

/// Edit profile button of [_BodyUserSportStats].
final class _BodyUserSportStatsEditProfileButton extends StatelessWidget {
  const _BodyUserSportStatsEditProfileButton();

  @override
  Widget build(context) {
    final themeExtension = context.resolveThemeExtension<HomeScreenThemeExtension>();
    final bodyUserSportStatsEditProfileButtonStyle = themeExtension.bodyUserSportStatsEditProfileButtonStyle;

    final homeScreenBodyUserSportStatsEditProfileButtonText =
        localization.homeScreenBodyUserSportStatsEditProfileButtonText;

    return MyoroIconTextButton(
      style: bodyUserSportStatsEditProfileButtonStyle.bordered(context),
      text: homeScreenBodyUserSportStatsEditProfileButtonText,
      onTapUp: (_, _) => AppRouter.push(Routes.userRoutes.userDetailsScreen.navigate()),
    );
  }
}
