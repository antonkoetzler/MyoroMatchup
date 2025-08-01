part of '../mm_app_bar.dart';

/// Title of [MmAppBar].
final class _Title extends StatelessWidget {
  const _Title();

  @override
  Widget build(context) {
    final themeExtension = context.resolveThemeExtension<MmAppBarThemeExtension>();
    final configuration = context.read<MmAppBarConfiguration>();
    return Text(configuration.title, style: themeExtension.titleTextStyle);
  }
}
