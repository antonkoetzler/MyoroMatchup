import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_matchup/myoro_matchup.dart';

part 'mm_location_input_theme_extension.g.dart';

/// [ThemeExtension] of [MmLocationInput].
@immutable
@myoroThemeExtension
final class MmLocationInputThemeExtension extends ThemeExtension<MmLocationInputThemeExtension>
    with _$MmLocationInputThemeExtensionMixin {
  const MmLocationInputThemeExtension();

  const MmLocationInputThemeExtension.fake();

  const MmLocationInputThemeExtension.builder();

  @override
  MmLocationInputThemeExtension lerp(covariant ThemeExtension<MmLocationInputThemeExtension>? other, double t) {
    return this;
  }
}
