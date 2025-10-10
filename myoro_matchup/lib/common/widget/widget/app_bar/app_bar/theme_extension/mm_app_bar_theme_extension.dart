import 'dart:ui';

import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:myoro_matchup/myoro_matchup.dart';

part 'mm_app_bar_theme_extension.g.dart';

/// [ThemeExtension] of [MmAppBar].
@immutable
@myoroThemeExtension
final class MmAppBarThemeExtension extends ThemeExtension<MmAppBarThemeExtension> with _$MmAppBarThemeExtensionMixin {
  const MmAppBarThemeExtension({
    required this.spacing,
    required this.bordered,
    required this.titleTextStyle,
    required this.backButtonIconConfiguration,
  });

  MmAppBarThemeExtension.fake()
    : spacing = faker.randomGenerator.decimal(scale: 20),
      bordered = faker.randomGenerator.boolean(),
      titleTextStyle = myoroFake<TextStyle>(),
      backButtonIconConfiguration = MyoroIconConfiguration.fake();

  MmAppBarThemeExtension.builder(TextTheme textTheme)
    : spacing = kMyoroMultiplier * 2,
      bordered = true,
      titleTextStyle = textTheme.titleMedium!,
      backButtonIconConfiguration = const MyoroIconConfiguration(
        icon: Icons.keyboard_arrow_left,
        size: kMyoroMultiplier * 6,
      );

  /// [MyoroAppBarConfiguration.bordered]
  final bool bordered;

  /// Spacing between back button and [MmAppBar.child].
  final double spacing;

  /// [TextStyle] of [MmAppBarConfiguration.title].
  final TextStyle titleTextStyle;

  /// [MyoroIconTextButtonConfiguration] of the back button.
  final MyoroIconConfiguration backButtonIconConfiguration;

  @override
  MmAppBarThemeExtension lerp(covariant ThemeExtension<MmAppBarThemeExtension>? other, double t) {
    if (other is! MmAppBarThemeExtension) return this;
    return copyWith(
      bordered: myoroFallbackLerp(bordered, other.bordered, t),
      spacing: lerpDouble(spacing, other.spacing, t),
      titleTextStyle: TextStyle.lerp(titleTextStyle, other.titleTextStyle, t),
      backButtonIconConfiguration: myoroFallbackLerp(backButtonIconConfiguration, other.backButtonIconConfiguration, t),
    );
  }
}
