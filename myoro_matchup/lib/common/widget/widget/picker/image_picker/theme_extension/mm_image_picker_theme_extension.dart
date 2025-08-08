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
  const MmImagePickerThemeExtension({required this.selectedImageBorderRadius});

  MmImagePickerThemeExtension.fake() : selectedImageBorderRadius = myoroFake<BorderRadius>();

  MmImagePickerThemeExtension.builder() : selectedImageBorderRadius = BorderRadius.circular(kMyoroBorderRadiusLength);

  /// [BorderRadius] of the image [Widget].
  final BorderRadius selectedImageBorderRadius;

  @override
  MmImagePickerThemeExtension lerp(covariant ThemeExtension<MmImagePickerThemeExtension>? other, double t) {
    if (other is! MmImagePickerThemeExtension) return this;
    return copyWith(
      selectedImageBorderRadius: BorderRadius.lerp(selectedImageBorderRadius, other.selectedImageBorderRadius, t),
    );
  }
}
