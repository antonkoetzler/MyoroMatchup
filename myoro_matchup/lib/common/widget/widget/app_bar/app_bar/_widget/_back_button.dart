part of '../widget/mm_app_bar.dart';

/// Back button of [MmAppBar].
final class _BackButton extends StatelessWidget {
  const _BackButton(this._onBack);

  final VoidCallback? _onBack;

  @override
  Widget build(context) {
    final themeExtension = context.resolveThemeExtension<MmAppBarThemeExtension>();
    final backButtonIcon = themeExtension.backButtonIcon;
    final backButtonIconSize = themeExtension.backButtonIconSize;

    return MyoroIconTextButton(
      style: MyoroIconTextButtonStyle(iconSize: backButtonIconSize),
      icon: backButtonIcon,
      onTapUp: (_, _) {
        _onBack?.call();
        MmRouter.pop();
      },
    );
  }
}
