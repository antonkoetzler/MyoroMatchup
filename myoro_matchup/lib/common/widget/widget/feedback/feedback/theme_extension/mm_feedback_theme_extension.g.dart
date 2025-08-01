// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mm_feedback_theme_extension.dart';

// **************************************************************************
// MyoroThemeExtensionGenerator
// **************************************************************************

/// Apply this mixin to [MmFeedbackThemeExtension] once the code is generated.
///
/// ```dart
/// class MmFeedbackThemeExtension with _$MmFeedbackThemeExtensionMixin {}
/// ```
mixin _$MmFeedbackThemeExtensionMixin
    on ThemeExtension<MmFeedbackThemeExtension> {
  MmFeedbackThemeExtension get self => this as MmFeedbackThemeExtension;

  @override
  MmFeedbackThemeExtension copyWith({
    double? spacing,
    double? iconSize,
    TextAlign? textAlign,
    TextStyle? titleTextStyle,
    TextStyle? subtitleTextStyle,
    EdgeInsets? actionButtonPadding,
  }) {
    return MmFeedbackThemeExtension(
      spacing: spacing ?? self.spacing,
      iconSize: iconSize ?? self.iconSize,
      textAlign: textAlign ?? self.textAlign,
      titleTextStyle: titleTextStyle ?? self.titleTextStyle,
      subtitleTextStyle: subtitleTextStyle ?? self.subtitleTextStyle,
      actionButtonPadding: actionButtonPadding ?? self.actionButtonPadding,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is MmFeedbackThemeExtension &&
        other.runtimeType == runtimeType &&
        other.spacing == self.spacing &&
        other.iconSize == self.iconSize &&
        other.textAlign == self.textAlign &&
        other.titleTextStyle == self.titleTextStyle &&
        other.subtitleTextStyle == self.subtitleTextStyle &&
        other.actionButtonPadding == self.actionButtonPadding;
  }

  @override
  int get hashCode {
    return Object.hash(
      self.spacing,
      self.iconSize,
      self.textAlign,
      self.titleTextStyle,
      self.subtitleTextStyle,
      self.actionButtonPadding,
    );
  }

  @override
  String toString() =>
      'MmFeedbackThemeExtension(\n'
      '  spacing: ${self.spacing},\n'
      '  iconSize: ${self.iconSize},\n'
      '  textAlign: ${self.textAlign},\n'
      '  titleTextStyle: ${self.titleTextStyle},\n'
      '  subtitleTextStyle: ${self.subtitleTextStyle},\n'
      '  actionButtonPadding: ${self.actionButtonPadding},\n'
      ');';
}
