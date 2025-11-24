part of '../widget/mm_app_bar.dart';

/// Menu button of [MmAppBar].
final class _MenuButton extends StatelessWidget {
  const _MenuButton();

  @override
  Widget build(context) {
    final themeExtension = context.resolveThemeExtension<MmAppBarThemeExtension>();
    final menuButtonIcon = themeExtension.menuButtonIcon;
    final menuButtonIconSize = themeExtension.menuButtonIconSize;
    return MyoroIconTextButton(
      style: MyoroIconTextButtonStyle(iconSize: menuButtonIconSize),
      icon: menuButtonIcon,
      onTapUp: (_, _) => _MenuModal._show(context),
    );
  }
}
