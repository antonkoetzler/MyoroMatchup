part of '../mm_feedback.dart';

/// Icon of [MmFeedback].
final class _Icon extends StatelessWidget {
  const _Icon();

  @override
  Widget build(context) {
    final themeExtension = context.resolveThemeExtension<MmFeedbackThemeExtension>();
    final configuration = context.read<MmFeedbackConfiguration>();
    return Icon(configuration.icon, size: themeExtension.iconSize);
  }
}
