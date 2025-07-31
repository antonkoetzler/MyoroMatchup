// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'myoro_feedback_theme_extension.dart';

// **************************************************************************
// MyoroThemeExtensionGenerator
// **************************************************************************

/// Apply this mixin to [MyoroFeedbackThemeExtension] once the code is generated.
///
/// ```dart
/// class MyoroFeedbackThemeExtension with _$MyoroFeedbackThemeExtensionMixin {}
/// ```
mixin _$MyoroFeedbackThemeExtensionMixin
    on ThemeExtension<MyoroFeedbackThemeExtension> {
  MyoroFeedbackThemeExtension get self => this as MyoroFeedbackThemeExtension;

  @override
  MyoroFeedbackThemeExtension copyWith({
    double? spacing,
    TextStyle? titleTextStyle,
    TextStyle? subtitleTextStyle,
  }) {
    return MyoroFeedbackThemeExtension(
      spacing: spacing ?? self.spacing,
      titleTextStyle: titleTextStyle ?? self.titleTextStyle,
      subtitleTextStyle: subtitleTextStyle ?? self.subtitleTextStyle,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is MyoroFeedbackThemeExtension &&
        other.runtimeType == runtimeType &&
        other.spacing == self.spacing &&
        other.titleTextStyle == self.titleTextStyle &&
        other.subtitleTextStyle == self.subtitleTextStyle;
  }

  @override
  int get hashCode {
    return Object.hash(
      self.spacing,
      self.titleTextStyle,
      self.subtitleTextStyle,
    );
  }

  @override
  String toString() =>
      'MyoroFeedbackThemeExtension(\n'
      '  spacing: ${self.spacing},\n'
      '  titleTextStyle: ${self.titleTextStyle},\n'
      '  subtitleTextStyle: ${self.subtitleTextStyle},\n'
      ');';
}
