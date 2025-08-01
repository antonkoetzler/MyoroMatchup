import 'dart:ui';

import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:myoro_matchup/myoro_matchup.dart';

part 'mm_feedback_theme_extension.g.dart';

/// [ThemeExtension] of [MmFeedback].
@immutable
@myoroThemeExtension
final class MmFeedbackThemeExtension extends ThemeExtension<MmFeedbackThemeExtension>
    with _$MmFeedbackThemeExtensionMixin {
  const MmFeedbackThemeExtension({
    required this.spacing,
    required this.iconSize,
    required this.textAlign,
    required this.titleTextStyle,
    required this.subtitleTextStyle,
    required this.actionButtonPadding,
  });

  MmFeedbackThemeExtension.fake()
    : spacing = faker.randomGenerator.decimal(scale: 20),
      iconSize = faker.randomGenerator.decimal(scale: 100),
      textAlign = myoroFake<TextAlign>(),
      titleTextStyle = myoroFake<TextStyle>(),
      subtitleTextStyle = myoroFake<TextStyle>(),
      actionButtonPadding = myoroFake<EdgeInsets>();

  MmFeedbackThemeExtension.builder(TextTheme textTheme)
    : spacing = kSpacing * 2,
      iconSize = kSpacing * 20,
      textAlign = TextAlign.center,
      titleTextStyle = textTheme.titleLarge!,
      subtitleTextStyle = textTheme.bodyMedium!,
      actionButtonPadding = const EdgeInsets.symmetric(horizontal: kSpacing * 4);

  /// Spacing betweeen each [Widget].
  final double spacing;

  /// Size of the icon.
  final double iconSize;

  /// [TextAlign] of all text.
  final TextAlign textAlign;

  /// [TextStyle] of [MmFeedbackConfiguration.title].
  final TextStyle titleTextStyle;

  /// [TextStyle] of [MmFeedbackConfiguration.subtitle].
  final TextStyle subtitleTextStyle;

  /// Padding of the action button.
  final EdgeInsets actionButtonPadding;

  @override
  MmFeedbackThemeExtension lerp(covariant ThemeExtension<MmFeedbackThemeExtension>? other, double t) {
    if (other is! MmFeedbackThemeExtension) return this;
    return copyWith(
      spacing: lerpDouble(spacing, other.spacing, t),
      iconSize: lerpDouble(iconSize, other.iconSize, t),
      textAlign: myoroLerp(textAlign, other.textAlign, t),
      titleTextStyle: TextStyle.lerp(titleTextStyle, other.titleTextStyle, t),
      subtitleTextStyle: TextStyle.lerp(subtitleTextStyle, other.subtitleTextStyle, t),
      actionButtonPadding: EdgeInsets.lerp(actionButtonPadding, other.actionButtonPadding, t),
    );
  }
}
