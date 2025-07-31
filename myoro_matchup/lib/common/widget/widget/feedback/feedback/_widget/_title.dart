part of '../myoro_feedback.dart';

/// Title of [MyoroFeedback].
final class _Title extends StatelessWidget {
  const _Title();

  @override
  Widget build(context) {
    final themeExtension = context.resolveThemeExtension<MyoroFeedbackThemeExtension>();
    final configuration = context.read<MyoroFeedbackConfiguration>();
    return Text(configuration.title, style: themeExtension.titleTextStyle);
  }
}
