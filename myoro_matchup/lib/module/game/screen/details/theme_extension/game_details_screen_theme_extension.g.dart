// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game_details_screen_theme_extension.dart';

// **************************************************************************
// MyoroThemeExtensionGenerator
// **************************************************************************

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
  GameDetailsScreenThemeExtension copyWith({
    EdgeInsets? errorStatePadding,
    MyoroIconConfiguration? appBarOptionsIconConfiguration,
    EdgeInsets? bodySuccessStatePadding,
  }) {
    return GameDetailsScreenThemeExtension(
      errorStatePadding: errorStatePadding ?? self.errorStatePadding,
      appBarOptionsIconConfiguration:
          appBarOptionsIconConfiguration ?? self.appBarOptionsIconConfiguration,
      bodySuccessStatePadding:
          bodySuccessStatePadding ?? self.bodySuccessStatePadding,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is GameDetailsScreenThemeExtension &&
        other.runtimeType == runtimeType &&
        other.errorStatePadding == self.errorStatePadding &&
        other.appBarOptionsIconConfiguration ==
            self.appBarOptionsIconConfiguration &&
        other.bodySuccessStatePadding == self.bodySuccessStatePadding;
  }

  @override
  int get hashCode {
    return Object.hash(
      self.errorStatePadding,
      self.appBarOptionsIconConfiguration,
      self.bodySuccessStatePadding,
    );
  }

  @override
  String toString() =>
      'GameDetailsScreenThemeExtension(\n'
      '  errorStatePadding: ${self.errorStatePadding},\n'
      '  appBarOptionsIconConfiguration: ${self.appBarOptionsIconConfiguration},\n'
      '  bodySuccessStatePadding: ${self.bodySuccessStatePadding},\n'
      ');';
}
