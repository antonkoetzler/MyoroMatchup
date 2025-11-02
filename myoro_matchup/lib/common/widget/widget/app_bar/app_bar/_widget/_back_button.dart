part of '../mm_app_bar.dart';

/// Back button of [MmAppBar].
final class _BackButton extends StatelessWidget {
  const _BackButton();

  @override
  Widget build(context) {
    final themeExtension = context.resolveThemeExtension<MmAppBarThemeExtension>();
    final configuration = context.read<MmAppBarConfiguration>();

    return MyoroIconTextButton(
      iconConfiguration: themeExtension.backButtonIconConfiguration,
      onTapUp: (_) {
        configuration.onBack?.call();
        AppRouter.pop();
      },
    );
  }
}
