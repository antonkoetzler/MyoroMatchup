// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_screen_theme_extension.dart';

// **************************************************************************
// MyoroThemeExtensionGenerator
// **************************************************************************

/// Apply this mixin to [HomeScreenThemeExtension] once the code is generated.
///
/// ```dart
/// class HomeScreenThemeExtension with _$HomeScreenThemeExtensionMixin {}
/// ```
mixin _$HomeScreenThemeExtensionMixin
    on ThemeExtension<HomeScreenThemeExtension> {
  HomeScreenThemeExtension get self => this as HomeScreenThemeExtension;

  @override
  HomeScreenThemeExtension copyWith({TextStyle? errorStateTextStyle}) {
    return HomeScreenThemeExtension(
      errorStateTextStyle: errorStateTextStyle ?? self.errorStateTextStyle,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is HomeScreenThemeExtension &&
        other.runtimeType == runtimeType &&
        other.errorStateTextStyle == self.errorStateTextStyle;
  }

  @override
  int get hashCode {
    return Object.hashAll([self.errorStateTextStyle]);
  }

  @override
  String toString() =>
      'HomeScreenThemeExtension(\n'
      '  errorStateTextStyle: ${self.errorStateTextStyle},\n'
      ');';
}
