part of '../home_screen.dart';

/// Loader of [_BodyUserSportStats].
final class _Loader extends StatelessWidget {
  /// Default constructor.
  const _Loader();

  /// Builds function.
  @override
  Widget build(context) {
    return const Center(child: CircularProgressIndicator());
  }
}
