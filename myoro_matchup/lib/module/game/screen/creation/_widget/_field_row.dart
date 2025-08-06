part of '../game_creation_screen.dart';

/// Row of fields.
final class _FieldRow extends StatelessWidget {
  const _FieldRow(this._children);

  final List<Widget> _children;

  @override
  Widget build(context) {
    final themeExtension = context.resolveThemeExtension<GameCreationScreenThemeExtension>();

    return Row(
      spacing: themeExtension.spacing,
      children: _children.map((c) => Expanded(child: c)).toList(),
    );
  }
}
