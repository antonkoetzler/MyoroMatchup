part of '../mm_feedback.dart';

/// Action button of [MmFeedback].
final class _ActionButton extends StatelessWidget {
  const _ActionButton();

  @override
  Widget build(context) {
    final themeExtension = context.resolveThemeExtension<MmFeedbackThemeExtension>();
    final configuration = context.read<MmFeedbackConfiguration>();

    return Padding(
      padding: themeExtension.actionButtonPadding,
      child: MyoroIconTextButton(
        configuration: MyoroIconTextButtonConfiguration(
          textConfiguration: MyoroTextConfiguration(text: configuration.actionButtonConfiguration!.text),
          borderBuilder: (_) => MyoroButtonStyleEnum.border(context),
          onTapUp: (_) => configuration.actionButtonConfiguration!.onTapUp(),
        ),
      ),
    );
  }
}
