part of '../home_screen.dart';

/// Error state of [_BodyUserSportStats].
final class _BodyUserSportStatsErrorState extends StatelessWidget {
  /// Default constructor.
  const _BodyUserSportStatsErrorState();

  /// Build function.
  @override
  Widget build(context) {
    final homeScreenBodyUserSportStatsErrorStateTitle = localization.homeScreenBodyUserSportStatsErrorStateTitle;

    final themeExtension = context.resolveThemeExtension<HomeScreenThemeExtension>();
    final bodyUserSportStatsErrorStatePadding = themeExtension.bodyUserSportStatsErrorStatePadding;

    final viewModel = context.read<HomeScreenViewModel>();
    final fetchUser = viewModel.fetchUser;

    return Padding(
      padding: bodyUserSportStatsErrorStatePadding,
      child: MmErrorFeedback(
        showIcon: false,
        title: homeScreenBodyUserSportStatsErrorStateTitle,
        onRetry: (context) => fetchUser(),
      ),
    );
  }
}
