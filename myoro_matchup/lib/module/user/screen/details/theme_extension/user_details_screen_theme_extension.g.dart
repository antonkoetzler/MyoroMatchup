// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_details_screen_theme_extension.dart';

// **************************************************************************
// MyoroThemeExtensionGenerator
// **************************************************************************

// coverage:ignore-file

/// Apply this mixin to [UserDetailsScreenThemeExtension] once the code is generated.
///
/// ```dart
/// class UserDetailsScreenThemeExtension with _$UserDetailsScreenThemeExtensionMixin {}
/// ```
mixin _$UserDetailsScreenThemeExtensionMixin
    on ThemeExtension<UserDetailsScreenThemeExtension> {
  UserDetailsScreenThemeExtension get self =>
      this as UserDetailsScreenThemeExtension;

  @override
  UserDetailsScreenThemeExtension copyWith({
    double? bodySpacing,
    EdgeInsets? bodyPadding,
    double? profilePictureSize,
    TextStyle? bodyUsernameTextStyle,
    TextStyle? bodyNameTextStyle,
    double? bodyLocationSpacing,
    TextStyle? bodyLocationLabelTextStyle,
    TextStyle? bodySubscriptionStatusLabelTextStyle,
  }) {
    return UserDetailsScreenThemeExtension(
      bodySpacing: bodySpacing ?? self.bodySpacing,
      bodyPadding: bodyPadding ?? self.bodyPadding,
      profilePictureSize: profilePictureSize ?? self.profilePictureSize,
      bodyUsernameTextStyle:
          bodyUsernameTextStyle ?? self.bodyUsernameTextStyle,
      bodyNameTextStyle: bodyNameTextStyle ?? self.bodyNameTextStyle,
      bodyLocationSpacing: bodyLocationSpacing ?? self.bodyLocationSpacing,
      bodyLocationLabelTextStyle:
          bodyLocationLabelTextStyle ?? self.bodyLocationLabelTextStyle,
      bodySubscriptionStatusLabelTextStyle:
          bodySubscriptionStatusLabelTextStyle ??
          self.bodySubscriptionStatusLabelTextStyle,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is UserDetailsScreenThemeExtension &&
        other.runtimeType == runtimeType &&
        other.bodySpacing == self.bodySpacing &&
        other.bodyPadding == self.bodyPadding &&
        other.profilePictureSize == self.profilePictureSize &&
        other.bodyUsernameTextStyle == self.bodyUsernameTextStyle &&
        other.bodyNameTextStyle == self.bodyNameTextStyle &&
        other.bodyLocationSpacing == self.bodyLocationSpacing &&
        other.bodyLocationLabelTextStyle == self.bodyLocationLabelTextStyle &&
        other.bodySubscriptionStatusLabelTextStyle ==
            self.bodySubscriptionStatusLabelTextStyle;
  }

  @override
  int get hashCode {
    return Object.hash(
      self.bodySpacing,
      self.bodyPadding,
      self.profilePictureSize,
      self.bodyUsernameTextStyle,
      self.bodyNameTextStyle,
      self.bodyLocationSpacing,
      self.bodyLocationLabelTextStyle,
      self.bodySubscriptionStatusLabelTextStyle,
    );
  }

  @override
  String toString() =>
      'UserDetailsScreenThemeExtension(\n'
      '  bodySpacing: ${self.bodySpacing},\n'
      '  bodyPadding: ${self.bodyPadding},\n'
      '  profilePictureSize: ${self.profilePictureSize},\n'
      '  bodyUsernameTextStyle: ${self.bodyUsernameTextStyle},\n'
      '  bodyNameTextStyle: ${self.bodyNameTextStyle},\n'
      '  bodyLocationSpacing: ${self.bodyLocationSpacing},\n'
      '  bodyLocationLabelTextStyle: ${self.bodyLocationLabelTextStyle},\n'
      '  bodySubscriptionStatusLabelTextStyle: ${self.bodySubscriptionStatusLabelTextStyle},\n'
      ');';
}
