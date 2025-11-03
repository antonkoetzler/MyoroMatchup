part of '../game_creation_screen.dart';

/// Generic button of [GameCreationScreen].
final class _Button extends StatelessWidget {
  const _Button(this._text, this._onTapUp, [this._isSecondary = true]);

  final String _text;
  final VoidCallback _onTapUp;
  final bool _isSecondary;

  @override
  Widget build(context) {
    final themeExtension = context.resolveThemeExtension<GameCreationScreenThemeExtension>();
    final buttonTextStyle = themeExtension.buttonTextStyle;

    return MyoroIconTextButton(
      style: _isSecondary
          ? const MyoroIconTextButtonStyle().secondary(context)
          : const MyoroIconTextButtonStyle().bordered(context),
      textConfiguration: MyoroTextConfiguration(text: _text, style: buttonTextStyle),
      onTapUp: (_) => _onTapUp(),
    );
  }
}
