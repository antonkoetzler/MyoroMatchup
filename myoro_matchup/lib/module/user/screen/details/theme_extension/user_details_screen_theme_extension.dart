import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:myoro_matchup/myoro_matchup.dart';

part 'user_details_screen_theme_extension.g.dart';

/// [ThemeExtension] of [UserDetailsScreen].
@immutable
@myoroThemeExtension
final class UserDetailsScreenThemeExtension extends ThemeExtension<UserDetailsScreenThemeExtension> with _$UserDetailsScreenThemeExtensionMixin {
  /// Default constructor.
  const UserDetailsScreenThemeExtension({
    required this.bodySpacing,
    required this.profilePictureSize,
    required this.bodyUsernameTextStyle,
    required this.bodyNameTextStyle,
    required this.bodyPadding,
    required this.bodyLocationSpacing,
    required this.bodyLocationLabelTextStyle,
    required this.bodySubscriptionStatusLabelTextStyle,
  });

  /// Fake constructor.
  UserDetailsScreenThemeExtension.fake()
    : bodySpacing = myoroFake<double>(),
      profilePictureSize = myoroFake<double>(),
      bodyUsernameTextStyle = myoroFake<TextStyle>(),
      bodyNameTextStyle = myoroFake<TextStyle>(),
      bodyPadding = myoroFake<EdgeInsets>(),
      bodyLocationSpacing = myoroFake<double>(),
      bodyLocationLabelTextStyle = myoroFake<TextStyle>(),
      bodySubscriptionStatusLabelTextStyle = myoroFake<TextStyle>();

  /// Builder constructor.
  UserDetailsScreenThemeExtension.builder(TextTheme textTheme)
    : bodySpacing = kMyoroMultiplier * 2,
      profilePictureSize = kMyoroMultiplier * 10,
      bodyUsernameTextStyle = textTheme.titleSmall!,
      bodyNameTextStyle = textTheme.headlineSmall!,
      bodyPadding = const EdgeInsets.all(kEdgeInsetsLength),
      bodyLocationSpacing = kMyoroMultiplier * 2,
      bodyLocationLabelTextStyle = textTheme.titleSmall!,
      bodySubscriptionStatusLabelTextStyle = textTheme.titleSmall!;

  /// Spacing between fields.
  final double bodySpacing;

  /// [EdgeInsets] of the body.
  final EdgeInsets bodyPadding;

  /// Size of the profile picture.
  final double profilePictureSize;

  /// [TextStyle] of the username.
  final TextStyle bodyUsernameTextStyle;

  /// [TextStyle] of the name.
  final TextStyle bodyNameTextStyle;

  /// Spacing between the location fields.
  final double bodyLocationSpacing;

  /// [TextStyle] of the location label.
  final TextStyle bodyLocationLabelTextStyle;

  /// [TextStyle] of the subscription status label.
  final TextStyle bodySubscriptionStatusLabelTextStyle;

  /// Lerp function.
  @override
  UserDetailsScreenThemeExtension lerp(ThemeExtension<UserDetailsScreenThemeExtension>? other, double t) {
    if (other is! UserDetailsScreenThemeExtension) return this;
    return copyWith(
      bodySpacing: lerpDouble(bodySpacing, other.bodySpacing, t),
      profilePictureSize: lerpDouble(profilePictureSize, other.profilePictureSize, t),
      bodyUsernameTextStyle: TextStyle.lerp(bodyUsernameTextStyle, other.bodyUsernameTextStyle, t),
      bodyNameTextStyle: TextStyle.lerp(bodyNameTextStyle, other.bodyNameTextStyle, t),
      bodyPadding: EdgeInsets.lerp(bodyPadding, other.bodyPadding, t),
      bodyLocationSpacing: lerpDouble(bodyLocationSpacing, other.bodyLocationSpacing, t),
      bodyLocationLabelTextStyle: TextStyle.lerp(bodyLocationLabelTextStyle, other.bodyLocationLabelTextStyle, t),
      bodySubscriptionStatusLabelTextStyle: TextStyle.lerp(bodySubscriptionStatusLabelTextStyle, other.bodySubscriptionStatusLabelTextStyle, t),
    );
  }
}
