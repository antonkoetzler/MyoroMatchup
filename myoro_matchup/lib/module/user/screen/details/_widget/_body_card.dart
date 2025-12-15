part of '../widget/user_details_screen.dart';

/// Card of [UserDetailsScreen].
final class _BodyCard extends StatelessWidget {
  /// Default constructor.
  const _BodyCard(this._title, this._child)
    : assert(_title.length > 0, '[UserDetailsScreen._BodyCard]: [_title] cannot be empty');

  /// Title.
  final String _title;

  /// Child.
  final Widget _child;

  /// Build function.
  @override
  Widget build(context) {
    return MyoroCard(
      title: _title,
      child: SizedBox(width: double.infinity, child: _child),
    );
  }
}
