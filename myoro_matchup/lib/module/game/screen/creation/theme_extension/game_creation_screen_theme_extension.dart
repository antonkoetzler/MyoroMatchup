import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:myoro_matchup/myoro_matchup.dart';

part 'game_creation_screen_theme_extension.g.dart';

/// [ThemeExtension] of [GameCreationScreen].
@immutable
@myoroThemeExtension
final class GameCreationScreenThemeExtension extends ThemeExtension<GameCreationScreenThemeExtension>
    with _$GameCreationScreenThemeExtensionMixin {
  const GameCreationScreenThemeExtension({
    required this.spacing,
    required this.titleTextStyle,
    required this.bodyPadding,
    required this.buttonTextStyle,
  });

  GameCreationScreenThemeExtension.fake()
    : spacing = myoroFake<double>(),
      titleTextStyle = myoroFake<TextStyle>(),
      bodyPadding = myoroFake<EdgeInsets>(),
      buttonTextStyle = myoroFake<TextStyle>();

  GameCreationScreenThemeExtension.builder(TextTheme textTheme)
    : spacing = kMyoroMultiplier * 2,
      titleTextStyle = textTheme.titleMedium!,
      bodyPadding = const EdgeInsets.fromLTRB(
        kMyoroMultiplier * 3,
        kMyoroMultiplier * 2,
        kMyoroMultiplier * 3,
        kMyoroMultiplier * 2,
      ),
      buttonTextStyle = textTheme.bodyMedium!;

  final double spacing;
  final TextStyle titleTextStyle;
  final EdgeInsets bodyPadding;
  final TextStyle buttonTextStyle;

  @override
  GameCreationScreenThemeExtension lerp(covariant ThemeExtension<GameCreationScreenThemeExtension>? other, double t) {
    if (other is! GameCreationScreenThemeExtension) return this;
    return copyWith(
      spacing: lerpDouble(spacing, other.spacing, t)!,
      titleTextStyle: TextStyle.lerp(titleTextStyle, other.titleTextStyle, t)!,
      bodyPadding: EdgeInsets.lerp(bodyPadding, other.bodyPadding, t)!,
      buttonTextStyle: TextStyle.lerp(buttonTextStyle, other.buttonTextStyle, t)!,
    );
  }
}
