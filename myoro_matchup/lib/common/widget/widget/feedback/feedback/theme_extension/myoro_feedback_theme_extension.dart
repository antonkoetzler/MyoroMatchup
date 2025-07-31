import 'dart:ui';

import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:myoro_matchup/myoro_matchup.dart';

part 'myoro_feedback_theme_extension.g.dart';

/// [ThemeExtension] of [MyoroFeedback].
@immutable
@myoroThemeExtension
final class MyoroFeedbackThemeExtension extends ThemeExtension<MyoroFeedbackThemeExtension>
    with _$MyoroFeedbackThemeExtensionMixin {
  const MyoroFeedbackThemeExtension({
    required this.spacing,
    required this.titleTextStyle,
    required this.subtitleTextStyle,
  });

  MyoroFeedbackThemeExtension.fake()
    : spacing = faker.randomGenerator.decimal(scale: 20),
      titleTextStyle = myoroFake<TextStyle>(),
      subtitleTextStyle = myoroFake<TextStyle>();

  MyoroFeedbackThemeExtension.builder(TextTheme textTheme)
    : spacing = kSpacing * 2,
      titleTextStyle = textTheme.titleLarge!,
      subtitleTextStyle = textTheme.bodyMedium!;

  /// Spacing betweeen each [Widget].
  final double spacing;

  /// [TextStyle] of [MyoroFeedbackConfiguration.title].
  final TextStyle titleTextStyle;

  /// [TextStyle] of [MyoroFeedbackConfiguration.subtitle].
  final TextStyle subtitleTextStyle;

  @override
  MyoroFeedbackThemeExtension lerp(covariant ThemeExtension<MyoroFeedbackThemeExtension>? other, double t) {
    if (other is! MyoroFeedbackThemeExtension) return this;
    return copyWith(
      spacing: lerpDouble(spacing, other.spacing, t),
      titleTextStyle: TextStyle.lerp(titleTextStyle, other.titleTextStyle, t),
      subtitleTextStyle: TextStyle.lerp(subtitleTextStyle, other.subtitleTextStyle, t),
    );
  }
}
