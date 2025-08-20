import 'dart:ui';

import 'package:faker/faker.dart';
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
  const GameCreationScreenThemeExtension({required this.spacing});

  GameCreationScreenThemeExtension.fake() : spacing = faker.randomGenerator.decimal(scale: 20);

  const GameCreationScreenThemeExtension.builder() : spacing = kMyoroMultiplier * 2;

  /// Spacing between [Widget]s.
  final double spacing;

  @override
  GameCreationScreenThemeExtension lerp(covariant ThemeExtension<GameCreationScreenThemeExtension>? other, double t) {
    if (other is! GameCreationScreenThemeExtension) return this;
    return copyWith(spacing: lerpDouble(spacing, other.spacing, t));
  }
}
