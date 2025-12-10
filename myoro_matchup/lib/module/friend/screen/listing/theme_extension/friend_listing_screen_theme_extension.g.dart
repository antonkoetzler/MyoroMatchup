// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'friend_listing_screen_theme_extension.dart';

// **************************************************************************
// MyoroThemeExtensionGenerator
// **************************************************************************

// coverage:ignore-file

/// Apply this mixin to [FriendListingScreenThemeExtension] once the code is generated.
///
/// ```dart
/// class FriendListingScreenThemeExtension with _$FriendListingScreenThemeExtensionMixin {}
/// ```
mixin _$FriendListingScreenThemeExtensionMixin
    on ThemeExtension<FriendListingScreenThemeExtension> {
  FriendListingScreenThemeExtension get self =>
      this as FriendListingScreenThemeExtension;

  @override
  FriendListingScreenThemeExtension copyWith({
    EdgeInsets? bodyNonEmptyStatePadding,
    MyoroScrollableStyle? bodyNonEmptyStateScrollableStyle,
  }) {
    return FriendListingScreenThemeExtension(
      bodyNonEmptyStatePadding:
          bodyNonEmptyStatePadding ?? self.bodyNonEmptyStatePadding,
      bodyNonEmptyStateScrollableStyle:
          bodyNonEmptyStateScrollableStyle ??
          self.bodyNonEmptyStateScrollableStyle,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is FriendListingScreenThemeExtension &&
        other.runtimeType == runtimeType &&
        other.bodyNonEmptyStatePadding == self.bodyNonEmptyStatePadding &&
        other.bodyNonEmptyStateScrollableStyle ==
            self.bodyNonEmptyStateScrollableStyle;
  }

  @override
  int get hashCode {
    return Object.hash(
      self.bodyNonEmptyStatePadding,
      self.bodyNonEmptyStateScrollableStyle,
    );
  }

  @override
  String toString() =>
      'FriendListingScreenThemeExtension(\n'
      '  bodyNonEmptyStatePadding: ${self.bodyNonEmptyStatePadding},\n'
      '  bodyNonEmptyStateScrollableStyle: ${self.bodyNonEmptyStateScrollableStyle},\n'
      ');';
}
