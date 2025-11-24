part of '../home_screen.dart';

/// Loader of [_BodyUserSportStats].
final class _Loader extends StatelessWidget {
  /// Default constructor.
  const _Loader();

  /// Builds function.
  @override
  Widget build(context) {
    final themeExtension = context.resolveThemeExtension<HomeScreenThemeExtension>();
    final bodyUserSportStatsLoaderPadding = themeExtension.bodyUserSportStatsLoaderPadding;
    return Padding(
      padding: bodyUserSportStatsLoaderPadding,
      child: const Center(child: MyoroCircularLoader()),
    );
  }
}
