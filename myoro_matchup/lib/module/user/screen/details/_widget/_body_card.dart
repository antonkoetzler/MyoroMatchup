part of '../widget/user_details_screen.dart';

/// Card of [UserDetailsScreen].
final class _BodyCard extends StatelessWidget {
  /// Default constructor.
  const _BodyCard(this._child);

  /// Child.
  final Widget _child;

  /// Build function.
  @override
  Widget build(context) {
    return MyoroCard(
      child: SizedBox(width: double.infinity, child: _child),
    );
  }
}
