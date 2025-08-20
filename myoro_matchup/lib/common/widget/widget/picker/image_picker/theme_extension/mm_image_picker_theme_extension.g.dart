// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mm_image_picker_theme_extension.dart';

// **************************************************************************
// MyoroThemeExtensionGenerator
// **************************************************************************

// coverage:ignore-file

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
    BoxConstraints? profilePictureConstraints,
    BoxConstraints? bannerConstraints,
    BorderRadius? borderRadius,
    Clip? clipBehavior,
    MouseCursor? overlayCursor,
    Color? overlayIdleBackgroundColor,
    Color? overlayHoverBackgroundColor,
    Color? overlayTapBackgroundColor,
    double? selectedImageUnselectedStateIconSize,
  }) {
    return MmImagePickerThemeExtension(
      profilePictureConstraints:
          profilePictureConstraints ?? self.profilePictureConstraints,
      bannerConstraints: bannerConstraints ?? self.bannerConstraints,
      borderRadius: borderRadius ?? self.borderRadius,
      clipBehavior: clipBehavior ?? self.clipBehavior,
      overlayCursor: overlayCursor ?? self.overlayCursor,
      overlayIdleBackgroundColor:
          overlayIdleBackgroundColor ?? self.overlayIdleBackgroundColor,
      overlayHoverBackgroundColor:
          overlayHoverBackgroundColor ?? self.overlayHoverBackgroundColor,
      overlayTapBackgroundColor:
          overlayTapBackgroundColor ?? self.overlayTapBackgroundColor,
      selectedImageUnselectedStateIconSize:
          selectedImageUnselectedStateIconSize ??
          self.selectedImageUnselectedStateIconSize,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is MmImagePickerThemeExtension &&
        other.runtimeType == runtimeType &&
        other.profilePictureConstraints == self.profilePictureConstraints &&
        other.bannerConstraints == self.bannerConstraints &&
        other.borderRadius == self.borderRadius &&
        other.clipBehavior == self.clipBehavior &&
        other.overlayCursor == self.overlayCursor &&
        other.overlayIdleBackgroundColor == self.overlayIdleBackgroundColor &&
        other.overlayHoverBackgroundColor == self.overlayHoverBackgroundColor &&
        other.overlayTapBackgroundColor == self.overlayTapBackgroundColor &&
        other.selectedImageUnselectedStateIconSize ==
            self.selectedImageUnselectedStateIconSize;
  }

  @override
  int get hashCode {
    return Object.hash(
      self.profilePictureConstraints,
      self.bannerConstraints,
      self.borderRadius,
      self.clipBehavior,
      self.overlayCursor,
      self.overlayIdleBackgroundColor,
      self.overlayHoverBackgroundColor,
      self.overlayTapBackgroundColor,
      self.selectedImageUnselectedStateIconSize,
    );
  }

  @override
  String toString() =>
      'MmImagePickerThemeExtension(\n'
      '  profilePictureConstraints: ${self.profilePictureConstraints},\n'
      '  bannerConstraints: ${self.bannerConstraints},\n'
      '  borderRadius: ${self.borderRadius},\n'
      '  clipBehavior: ${self.clipBehavior},\n'
      '  overlayCursor: ${self.overlayCursor},\n'
      '  overlayIdleBackgroundColor: ${self.overlayIdleBackgroundColor},\n'
      '  overlayHoverBackgroundColor: ${self.overlayHoverBackgroundColor},\n'
      '  overlayTapBackgroundColor: ${self.overlayTapBackgroundColor},\n'
      '  selectedImageUnselectedStateIconSize: ${self.selectedImageUnselectedStateIconSize},\n'
      ');';
}
