import 'dart:ui';

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
    required this.profilePictureConstraints,
    required this.bannerConstraints,
    required this.borderRadius,
    required this.clipBehavior,
    required this.overlayCursor,
    required this.overlayIdleBackgroundColor,
    required this.overlayHoverBackgroundColor,
    required this.overlayTapBackgroundColor,
    required this.selectedImageUnselectedStateIconSize,
  });

  MmImagePickerThemeExtension.fake()
    : profilePictureConstraints = myoroFake<BoxConstraints>(),
      bannerConstraints = myoroFake<BoxConstraints>(),
      borderRadius = myoroFake<BorderRadius>(),
      clipBehavior = Clip.values[faker.randomGenerator.integer(Clip.values.length)],
      overlayCursor = myoroFake<MouseCursor>(),
      overlayIdleBackgroundColor = myoroFake<Color>(),
      overlayHoverBackgroundColor = myoroFake<Color>(),
      overlayTapBackgroundColor = myoroFake<Color>(),
      selectedImageUnselectedStateIconSize = faker.randomGenerator.decimal(scale: 500, min: 20);

  MmImagePickerThemeExtension.builder(ColorScheme colorScheme)
    : profilePictureConstraints = const BoxConstraints(
        minWidth: kMyoroMultiplier * 20,
        minHeight: kMyoroMultiplier * 20,
      ),
      bannerConstraints = const BoxConstraints(minWidth: double.infinity, minHeight: kMyoroMultiplier * 20),
      borderRadius = BorderRadius.circular(kMyoroBorderRadiusLength),
      clipBehavior = Clip.hardEdge,
      overlayCursor = SystemMouseCursors.click,
      overlayIdleBackgroundColor = colorScheme.onPrimary.withValues(alpha: kTransparencyOpacity1),
      overlayHoverBackgroundColor = colorScheme.onPrimary.withValues(alpha: kTransparencyOpacity2),
      overlayTapBackgroundColor = colorScheme.onPrimary.withValues(alpha: kTransparencyOpacity3),
      selectedImageUnselectedStateIconSize = kMyoroMultiplier * 10;

  /// [BoxConstraints] of [MmImagePickerEnum.profilePicture].
  final BoxConstraints profilePictureConstraints;

  /// [BoxConstraints] of [MmImagePickerEnum.banner].
  final BoxConstraints bannerConstraints;

  /// [BorderRadius] of the image [Widget].
  final BorderRadius borderRadius;

  /// [Clip] of the image [ClipRRect].
  final Clip clipBehavior;

  /// [MouseCursor] of the overlay [Widget].
  final MouseCursor overlayCursor;

  /// [Color] of overlay button for [MyoroTapStatusEnum.idle].
  final Color overlayIdleBackgroundColor;

  /// [Color] of overlay button for [MyoroTapStatusEnum.hover].
  final Color overlayHoverBackgroundColor;

  /// [Color] of overlay button for [MyoroTapStatusEnum.tap].
  final Color overlayTapBackgroundColor;

  /// Size of the [Icon] that is displayed when no image is selected.
  final double selectedImageUnselectedStateIconSize;

  @override
  MmImagePickerThemeExtension lerp(covariant ThemeExtension<MmImagePickerThemeExtension>? other, double t) {
    if (other is! MmImagePickerThemeExtension) return this;
    return copyWith(
      profilePictureConstraints: BoxConstraints.lerp(profilePictureConstraints, other.profilePictureConstraints, t),
      bannerConstraints: BoxConstraints.lerp(bannerConstraints, other.bannerConstraints, t),
      borderRadius: BorderRadius.lerp(borderRadius, other.borderRadius, t),
      clipBehavior: myoroLerp(clipBehavior, other.clipBehavior, t),
      overlayCursor: myoroLerp(overlayCursor, other.overlayCursor, t),
      overlayIdleBackgroundColor: Color.lerp(overlayIdleBackgroundColor, other.overlayIdleBackgroundColor, t),
      overlayHoverBackgroundColor: Color.lerp(overlayHoverBackgroundColor, other.overlayHoverBackgroundColor, t),
      overlayTapBackgroundColor: Color.lerp(overlayTapBackgroundColor, other.overlayTapBackgroundColor, t),
      selectedImageUnselectedStateIconSize: lerpDouble(
        selectedImageUnselectedStateIconSize,
        other.selectedImageUnselectedStateIconSize,
        t,
      ),
    );
  }

  /// [MyoroButtonConfiguration.backgroundColorBuilder] of the overlay button.
  Color overlayBackgroundColorBuilder(MyoroTapStatusEnum tapStatus) {
    return switch (tapStatus) {
      MyoroTapStatusEnum.idle => overlayIdleBackgroundColor,
      MyoroTapStatusEnum.hover => overlayHoverBackgroundColor,
      MyoroTapStatusEnum.tap => overlayTapBackgroundColor,
    };
  }
}
