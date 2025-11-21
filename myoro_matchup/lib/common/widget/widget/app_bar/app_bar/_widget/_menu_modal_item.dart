part of '../widget/mm_app_bar.dart';

/// Item of the menu drawer of [MmAppBar].
final class _MenuModalItem extends StatelessWidget {
  const _MenuModalItem(this._icon, this._text, this._navigation);

  final IconData _icon;
  final String _text;
  final RouteNavigationConfiguration _navigation;

  @override
  Widget build(context) {
    return MyoroIconTextButton(
      style: const MyoroIconTextButtonStyle().secondary(context),
      iconConfiguration: MyoroIconConfiguration(icon: _icon),
      text: _text,
      onTapUp: (_, _) {
        AppRouter.pop();
        AppRouter.push(_navigation);
      },
    );
  }
}
