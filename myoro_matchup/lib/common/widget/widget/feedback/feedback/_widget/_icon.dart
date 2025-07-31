part of '../myoro_feedback.dart';

/// Icon of [MyoroFeedback].
final class _Icon extends StatelessWidget {
  const _Icon();

  @override
  Widget build(context) {
    final configuration = context.read<MyoroFeedbackConfiguration>();
    return Icon(configuration.icon);
  }
}
