import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_matchup/myoro_matchup.dart';

part 'myoro_error_feedback_theme_extension.g.dart';

/// [ThemeExtension] of [MyoroErrorFeedback].
@immutable
@myoroThemeExtension
final class MyoroErrorFeedbackThemeExtension extends ThemeExtension<MyoroErrorFeedbackThemeExtension>
    with _$MyoroErrorFeedbackThemeExtensionMixin {
  const MyoroErrorFeedbackThemeExtension();

  const MyoroErrorFeedbackThemeExtension.builder();

  const MyoroErrorFeedbackThemeExtension.fake();

  @override
  MyoroErrorFeedbackThemeExtension lerp(covariant ThemeExtension<MyoroErrorFeedbackThemeExtension>? other, double t) {
    return this;
  }
}
