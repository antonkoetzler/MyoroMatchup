part of '../mm_app_bar.dart';

/// Title of [MmAppBar].
final class _Title extends StatelessWidget {
  const _Title(this._title);

  final String _title;

  @override
  Widget build(context) {
    final themeExtension = context.resolveThemeExtension<MmAppBarThemeExtension>();
    return Text(_title, style: themeExtension.titleTextStyle);
  }
}
