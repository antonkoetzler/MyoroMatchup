part of '../widget/invitation_listing_screen.dart';

/// Loader of [_Body].
final class _Loader extends StatelessWidget {
  /// Default constructor.
  const _Loader();

  @override
  Widget build(context) {
    return const Center(child: MyoroCircularLoader());
  }
}
