import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_matchup/myoro_matchup.dart';

part 'mm_empty_feedback_theme_extension.g.dart';

/// [ThemeExtension] of [MmEmptyFeedback].
@immutable
@myoroThemeExtension
final class MmEmptyFeedbackThemeExtension extends ThemeExtension<MmEmptyFeedbackThemeExtension>
    with _$MmEmptyFeedbackThemeExtensionMixin {
  const MmEmptyFeedbackThemeExtension();

  const MmEmptyFeedbackThemeExtension.builder();

  const MmEmptyFeedbackThemeExtension.fake();

  @override
  MmEmptyFeedbackThemeExtension lerp(covariant ThemeExtension<MmEmptyFeedbackThemeExtension>? other, double t) {
    return this;
  }
}
