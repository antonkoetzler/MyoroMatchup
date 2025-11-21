part of '../widget/mm_app_bar.dart';

/// Menu button of [MmAppBar].
final class _MenuButton extends StatelessWidget {
  const _MenuButton();

  @override
  Widget build(context) {
    final themeExtension = context.resolveThemeExtension<MmAppBarThemeExtension>();
    final menuButtonIconConfiguration = themeExtension.menuButtonIconConfiguration;
    return MyoroIconTextButton(
      iconConfiguration: menuButtonIconConfiguration,
      onTapUp: (_, _) => _MenuModal._show(context),
    );
  }
}
