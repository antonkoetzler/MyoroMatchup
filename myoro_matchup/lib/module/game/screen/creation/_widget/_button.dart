part of '../game_creation_screen.dart';

/// Generic button of [GameCreationScreen].
final class _Button extends StatelessWidget {
  const _Button({required this.text, required this.onTapUp, this.isSecondary = true});

  final String text;
  final VoidCallback onTapUp;
  final bool isSecondary;

  @override
  Widget build(context) {
    final themeExtension = context.resolveThemeExtension<GameCreationScreenThemeExtension>();
    final buttonTextStyle = themeExtension.buttonTextStyle;

    return MyoroIconTextButton(
      style: isSecondary
          ? const MyoroIconTextButtonStyle().secondary(context)
          : const MyoroIconTextButtonStyle().bordered(context),
      textConfiguration: MyoroTextConfiguration(text: text, style: buttonTextStyle),
      onTapUp: (_) => onTapUp(),
    );
  }
}
