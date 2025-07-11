part of '../home_screen.dart';

/// [MyoroRequestEnum.error] state of [_Body].
final class _BodyErrorState extends StatelessWidget {
  const _BodyErrorState(this._message);

  final String _message;

  @override
  Widget build(BuildContext context) {
    final themeExtension = context.resolveThemeExtension<HomeScreenThemeExtension>();
    return Center(child: Text(_message, style: themeExtension.errorStateTextStyle));
  }
}
