// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game_creation_screen_theme_extension.dart';

// **************************************************************************
// MyoroThemeExtensionGenerator
// **************************************************************************

/// Apply this mixin to [GameCreationScreenThemeExtension] once the code is generated.
///
/// ```dart
/// class GameCreationScreenThemeExtension with _$GameCreationScreenThemeExtensionMixin {}
/// ```
mixin _$GameCreationScreenThemeExtensionMixin
    on ThemeExtension<GameCreationScreenThemeExtension> {
  GameCreationScreenThemeExtension get self =>
      this as GameCreationScreenThemeExtension;

  @override
  GameCreationScreenThemeExtension copyWith({double? spacing}) {
    return GameCreationScreenThemeExtension(spacing: spacing ?? self.spacing);
  }

  @override
  bool operator ==(Object other) {
    return other is GameCreationScreenThemeExtension &&
        other.runtimeType == runtimeType &&
        other.spacing == self.spacing;
  }

  @override
  int get hashCode {
    return Object.hashAll([self.spacing]);
  }

  @override
  String toString() =>
      'GameCreationScreenThemeExtension(\n'
      '  spacing: ${self.spacing},\n'
      ');';
}
