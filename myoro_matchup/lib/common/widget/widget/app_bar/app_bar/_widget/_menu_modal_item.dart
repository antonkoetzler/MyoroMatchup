part of '../widget/mm_app_bar.dart';

/// Item of the menu drawer of [MmAppBar].
final class _MenuModalItem extends StatelessWidget {
  /// Default constructor.
  const _MenuModalItem(this._icon, this._text, this._onTap);

  /// Icon of the item.
  final IconData _icon;

  /// Navigation of the item.
  final String _text;

  /// On tap.
  final VoidCallback _onTap;

  /// Build function.
  @override
  Widget build(context) {
    return MyoroIconTextButton(
      style: const MyoroIconTextButtonStyle().secondary(context),
      icon: _icon,
      text: _text,
      onTapUp: (_, _) {
        MmRouter.pop();
        _onTap();
      },
    );
  }
}
