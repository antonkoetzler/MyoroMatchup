part of '../game_screen.dart';

/// [MyoroRequestEnum.error] state of [_Body].
final class _BodyErrorState extends StatelessWidget {
  const _BodyErrorState(this._message);

  final String _message;

  @override
  Widget build(context) {
    final themeExtension = context.resolveThemeExtension<GameScreenThemeExtension>();
    return Center(child: Text(_message, style: themeExtension.bodyErrorStateTextStyle));
  }
}
