part of '../myoro_feedback.dart';

/// Action button of [MyoroFeedback].
final class _ActionButton extends StatelessWidget {
  const _ActionButton();

  @override
  Widget build(context) {
    final configuration = context.read<MyoroFeedbackConfiguration>();
    return MyoroIconTextButton(
      configuration: MyoroIconTextButtonConfiguration(
        textConfiguration: MyoroTextConfiguration(text: configuration.actionButtonConfiguration!.text),
        borderBuilder: (_) => MyoroButtonStyleEnum.border(context),
        onTapUp: (_) => configuration.actionButtonConfiguration!.onTapUp(),
      ),
    );
  }
}
