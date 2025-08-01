part of '../mm_feedback.dart';

/// Title of [MmFeedback].
final class _Title extends StatelessWidget {
  const _Title();

  @override
  Widget build(context) {
    final themeExtension = context.resolveThemeExtension<MmFeedbackThemeExtension>();
    final configuration = context.read<MmFeedbackConfiguration>();
    return Text(
      configuration.title,
      textAlign: themeExtension.textAlign,
      style: themeExtension.titleTextStyle,
    ); // , style: themeExtension.titleTextStyle);
  }
}
