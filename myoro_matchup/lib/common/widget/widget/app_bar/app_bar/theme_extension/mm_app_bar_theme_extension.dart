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
    required this.bordered,
    required this.titleTextStyle,
    required this.backButtonIcon,
    required this.backButtonIconSize,
    required this.menuButtonIcon,
    required this.menuButtonIconSize,
    required this.menuDrawerSpacing,
    required this.menuDrawerContentPadding,
  });

  MmAppBarThemeExtension.fake()
    : bordered = faker.randomGenerator.boolean(),
      titleTextStyle = myoroFake<TextStyle>(),
      backButtonIcon = myoroFake<IconData>(),
      backButtonIconSize = myoroFake<double>(),
      menuButtonIcon = myoroFake<IconData>(),
      menuButtonIconSize = myoroFake<double>(),
      menuDrawerSpacing = faker.randomGenerator.decimal(scale: 20),
      menuDrawerContentPadding = myoroFake<EdgeInsets>();

  MmAppBarThemeExtension.builder(TextTheme textTheme)
    : bordered = true,
      titleTextStyle = textTheme.titleMedium!,
      backButtonIcon = Icons.arrow_back,
      backButtonIconSize = kMyoroMultiplier * 6,
      menuButtonIcon = Icons.menu,
      menuButtonIconSize = kMyoroMultiplier * 6,
      menuDrawerSpacing = kMyoroMultiplier * 2,
      menuDrawerContentPadding = const EdgeInsets.all(kMyoroMultiplier * 2);

  /// [MyoroAppBarConfiguration.bordered]
  final bool bordered;

  /// [TextStyle] of [MmAppBarConfiguration.title].
  final TextStyle titleTextStyle;

  /// Icon of the back button.
  final IconData backButtonIcon;

  /// Size of the back button icon.
  final double backButtonIconSize;

  /// Icon of the menu button.
  final IconData menuButtonIcon;

  /// Size of the menu button icon.
  final double menuButtonIconSize;

  /// Spacing between the menu drawer items.
  final double menuDrawerSpacing;

  /// Content padding of the menu drawer.
  final EdgeInsets menuDrawerContentPadding;

  @override
  MmAppBarThemeExtension lerp(covariant ThemeExtension<MmAppBarThemeExtension>? other, double t) {
    if (other is! MmAppBarThemeExtension) return this;
    return copyWith(
      bordered: myoroFallbackLerp(bordered, other.bordered, t),
      titleTextStyle: TextStyle.lerp(titleTextStyle, other.titleTextStyle, t),
      backButtonIcon: myoroFallbackLerp(backButtonIcon, other.backButtonIcon, t),
      backButtonIconSize: lerpDouble(backButtonIconSize, other.backButtonIconSize, t),
      menuDrawerSpacing: lerpDouble(menuDrawerSpacing, other.menuDrawerSpacing, t),
      menuDrawerContentPadding: EdgeInsets.lerp(menuDrawerContentPadding, other.menuDrawerContentPadding, t),
    );
  }
}
