// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mm_image_picker_theme_extension.dart';

// **************************************************************************
// MyoroThemeExtensionGenerator
// **************************************************************************

/// Apply this mixin to [MmImagePickerThemeExtension] once the code is generated.
///
/// ```dart
/// class MmImagePickerThemeExtension with _$MmImagePickerThemeExtensionMixin {}
/// ```
mixin _$MmImagePickerThemeExtensionMixin
    on ThemeExtension<MmImagePickerThemeExtension> {
  MmImagePickerThemeExtension get self => this as MmImagePickerThemeExtension;

  @override
  MmImagePickerThemeExtension copyWith({
    BoxConstraints? constraints,
    BorderRadius? borderRadius,
    Clip? clipBehavior,
    MouseCursor? overlayCursor,
    Color? overlayColor,
  }) {
    return MmImagePickerThemeExtension(
      constraints: constraints ?? self.constraints,
      borderRadius: borderRadius ?? self.borderRadius,
      clipBehavior: clipBehavior ?? self.clipBehavior,
      overlayCursor: overlayCursor ?? self.overlayCursor,
      overlayColor: overlayColor ?? self.overlayColor,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is MmImagePickerThemeExtension &&
        other.runtimeType == runtimeType &&
        other.constraints == self.constraints &&
        other.borderRadius == self.borderRadius &&
        other.clipBehavior == self.clipBehavior &&
        other.overlayCursor == self.overlayCursor &&
        other.overlayColor == self.overlayColor;
  }

  @override
  int get hashCode {
    return Object.hash(
      self.constraints,
      self.borderRadius,
      self.clipBehavior,
      self.overlayCursor,
      self.overlayColor,
    );
  }

  @override
  String toString() =>
      'MmImagePickerThemeExtension(\n'
      '  constraints: ${self.constraints},\n'
      '  borderRadius: ${self.borderRadius},\n'
      '  clipBehavior: ${self.clipBehavior},\n'
      '  overlayCursor: ${self.overlayCursor},\n'
      '  overlayColor: ${self.overlayColor},\n'
      ');';
}
