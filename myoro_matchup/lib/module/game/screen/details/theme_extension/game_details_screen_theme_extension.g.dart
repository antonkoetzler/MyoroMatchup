// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game_details_screen_theme_extension.dart';

// **************************************************************************
// MyoroThemeExtensionGenerator
// **************************************************************************

// coverage:ignore-file

/// Apply this mixin to [GameDetailsScreenThemeExtension] once the code is generated.
///
/// ```dart
/// class GameDetailsScreenThemeExtension with _$GameDetailsScreenThemeExtensionMixin {}
/// ```
mixin _$GameDetailsScreenThemeExtensionMixin
    on ThemeExtension<GameDetailsScreenThemeExtension> {
  GameDetailsScreenThemeExtension get self =>
      this as GameDetailsScreenThemeExtension;

  @override
  GameDetailsScreenThemeExtension copyWith({EdgeInsets? errorStatePadding}) {
    return GameDetailsScreenThemeExtension(
      errorStatePadding: errorStatePadding ?? self.errorStatePadding,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is GameDetailsScreenThemeExtension &&
        other.runtimeType == runtimeType &&
        other.errorStatePadding == self.errorStatePadding;
  }

  @override
  int get hashCode {
    return Object.hashAll([self.errorStatePadding]);
  }

  @override
  String toString() =>
      'GameDetailsScreenThemeExtension(\n'
      '  errorStatePadding: ${self.errorStatePadding},\n'
      ');';
}
