import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:myoro_matchup/myoro_matchup.dart';

part 'mm_image_picker_theme_extension.g.dart';

/// [ThemeExtension] of [MmImagePicker].
@immutable
@myoroThemeExtension
final class MmImagePickerThemeExtension extends ThemeExtension<MmImagePickerThemeExtension>
    with _$MmImagePickerThemeExtensionMixin {
  const MmImagePickerThemeExtension({
    required this.constraints,
    required this.borderRadius,
    required this.clipBehavior,
    required this.overlayCursor,
    required this.overlayColor,
  });

  MmImagePickerThemeExtension.fake()
    : constraints = myoroFake<BoxConstraints>(),
      borderRadius = myoroFake<BorderRadius>(),
      clipBehavior = Clip.values[faker.randomGenerator.integer(Clip.values.length)],
      overlayCursor = myoroFake<MouseCursor>(),
      overlayColor = myoroFake<Color>();

  MmImagePickerThemeExtension.builder(ColorScheme colorScheme)
    : constraints = const BoxConstraints(minWidth: kSpacing * 20, minHeight: kSpacing * 20),
      borderRadius = BorderRadius.circular(kMyoroBorderRadiusLength),
      clipBehavior = Clip.hardEdge,
      overlayCursor = SystemMouseCursors.click,
      overlayColor = colorScheme.onPrimary.withValues(alpha: kTransparencyOpacity);

  /// [BoxConstraints] of the [MmImagePicker].
  final BoxConstraints constraints;

  /// [BorderRadius] of the image [Widget].
  final BorderRadius borderRadius;

  /// [Clip] of the image [ClipRRect].
  final Clip clipBehavior;

  /// [MouseCursor] of the overlay [Widget].
  final MouseCursor overlayCursor;

  /// [Color] of the overlay [Widget].
  final Color overlayColor;

  @override
  MmImagePickerThemeExtension lerp(covariant ThemeExtension<MmImagePickerThemeExtension>? other, double t) {
    if (other is! MmImagePickerThemeExtension) return this;
    return copyWith(
      constraints: BoxConstraints.lerp(constraints, other.constraints, t),
      borderRadius: BorderRadius.lerp(borderRadius, other.borderRadius, t),
      clipBehavior: myoroLerp(clipBehavior, other.clipBehavior, t),
      overlayCursor: myoroLerp(overlayCursor, other.overlayCursor, t),
      overlayColor: Color.lerp(overlayColor, other.overlayColor, t),
    );
  }
}
