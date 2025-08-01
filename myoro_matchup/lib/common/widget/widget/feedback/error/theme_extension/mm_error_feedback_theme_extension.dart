import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_matchup/myoro_matchup.dart';

part 'mm_error_feedback_theme_extension.g.dart';

/// [ThemeExtension] of [MmErrorFeedback].
@immutable
@myoroThemeExtension
final class MmErrorFeedbackThemeExtension extends ThemeExtension<MmErrorFeedbackThemeExtension>
    with _$MmErrorFeedbackThemeExtensionMixin {
  const MmErrorFeedbackThemeExtension();

  const MmErrorFeedbackThemeExtension.builder();

  const MmErrorFeedbackThemeExtension.fake();

  @override
  MmErrorFeedbackThemeExtension lerp(covariant ThemeExtension<MmErrorFeedbackThemeExtension>? other, double t) {
    return this;
  }
}
