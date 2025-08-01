part of '../mm_feedback.dart';

/// Subtitle of [MmFeedback].
final class _Subtitle extends StatelessWidget {
  const _Subtitle();

  @override
  Widget build(context) {
    final themeExtension = context.resolveThemeExtension<MmFeedbackThemeExtension>();
    final configuration = context.read<MmFeedbackConfiguration>();
    return Text(configuration.subtitle!, textAlign: themeExtension.textAlign, style: themeExtension.subtitleTextStyle);
  }
}
