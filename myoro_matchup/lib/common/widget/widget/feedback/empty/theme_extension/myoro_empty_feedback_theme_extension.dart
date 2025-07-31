import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_matchup/myoro_matchup.dart';

part 'myoro_empty_feedback_theme_extension.g.dart';

/// [ThemeExtension] of [MyoroEmptyFeedback].
@immutable
@myoroThemeExtension
final class MyoroEmptyFeedbackThemeExtension extends ThemeExtension<MyoroEmptyFeedbackThemeExtension>
    with _$MyoroEmptyFeedbackThemeExtensionMixin {
  const MyoroEmptyFeedbackThemeExtension();

  const MyoroEmptyFeedbackThemeExtension.builder();

  const MyoroEmptyFeedbackThemeExtension.fake();

  @override
  MyoroEmptyFeedbackThemeExtension lerp(covariant ThemeExtension<MyoroEmptyFeedbackThemeExtension>? other, double t) {
    return this;
  }
}
