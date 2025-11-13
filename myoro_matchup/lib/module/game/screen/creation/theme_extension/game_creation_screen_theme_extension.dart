import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:myoro_matchup/myoro_matchup.dart';

part 'game_creation_screen_theme_extension.g.dart';

/// [ThemeExtension] of [GameCreationScreen].
@immutable
@myoroThemeExtension
final class GameCreationScreenThemeExtension extends ThemeExtension<GameCreationScreenThemeExtension>
    with _$GameCreationScreenThemeExtensionMixin {
  /// Default constructor.
  const GameCreationScreenThemeExtension({
    required this.spacing,
    required this.titleTextStyle,
    required this.bodyPadding,
    required this.buttonTextStyle,
    required this.priceScreenInputLabelTextStyle,
    required this.locationScreenCurrencyNotificationTextStyle,
    required this.visibilityAndImageScreenProfilePictureImageFieldStyle,
  });

  /// Fake constructor.
  GameCreationScreenThemeExtension.fake()
    : spacing = myoroFake<double>(),
      titleTextStyle = myoroFake<TextStyle>(),
      bodyPadding = myoroFake<EdgeInsets>(),
      buttonTextStyle = myoroFake<TextStyle>(),
      priceScreenInputLabelTextStyle = myoroFake<TextStyle>(),
      locationScreenCurrencyNotificationTextStyle = myoroFake<TextStyle>(),
      visibilityAndImageScreenProfilePictureImageFieldStyle = myoroFake<MyoroImagePickerStyle>();

  /// Builder constructor.
  GameCreationScreenThemeExtension.builder(TextTheme textTheme)
    : spacing = kMyoroMultiplier * 2,
      titleTextStyle = textTheme.titleMedium!,
      bodyPadding = const EdgeInsets.fromLTRB(
        kMyoroMultiplier * 3,
        kMyoroMultiplier * 3,
        kMyoroMultiplier * 3,
        kMyoroMultiplier * 3,
      ),
      buttonTextStyle = textTheme.bodyMedium!,
      priceScreenInputLabelTextStyle = textTheme.titleLarge!,
      locationScreenCurrencyNotificationTextStyle = textTheme.headlineMedium!,
      visibilityAndImageScreenProfilePictureImageFieldStyle = const MyoroImagePickerStyle(
        size: Size(kMyoroMultiplier * 40, kMyoroMultiplier * 40),
      );

  /// Spacing between the sections.
  final double spacing;

  /// [TextStyle] of the title.
  final TextStyle titleTextStyle;

  /// [EdgeInsets] of the body padding.
  final EdgeInsets bodyPadding;

  /// [TextStyle] of the button text.
  final TextStyle buttonTextStyle;

  /// [TextStyle] of the price screen input label text.
  final TextStyle priceScreenInputLabelTextStyle;

  /// [TextStyle] of the location screen currency notification text.
  final TextStyle locationScreenCurrencyNotificationTextStyle;

  /// [MyoroImagePickerStyle] of the visibility and image screen profile picture image field.
  final MyoroImagePickerStyle visibilityAndImageScreenProfilePictureImageFieldStyle;

  /// Lerp function.
  @override
  GameCreationScreenThemeExtension lerp(covariant GameCreationScreenThemeExtension? other, double t) {
    if (other is! GameCreationScreenThemeExtension) return this;
    return copyWith(
      spacing: lerpDouble(spacing, other.spacing, t)!,
      titleTextStyle: TextStyle.lerp(titleTextStyle, other.titleTextStyle, t)!,
      bodyPadding: EdgeInsets.lerp(bodyPadding, other.bodyPadding, t)!,
      buttonTextStyle: TextStyle.lerp(buttonTextStyle, other.buttonTextStyle, t)!,
      priceScreenInputLabelTextStyle: TextStyle.lerp(
        priceScreenInputLabelTextStyle,
        other.priceScreenInputLabelTextStyle,
        t,
      )!,
      locationScreenCurrencyNotificationTextStyle: TextStyle.lerp(
        locationScreenCurrencyNotificationTextStyle,
        other.locationScreenCurrencyNotificationTextStyle,
        t,
      ),
      visibilityAndImageScreenProfilePictureImageFieldStyle: MyoroImagePickerStyle.lerp(
        visibilityAndImageScreenProfilePictureImageFieldStyle,
        other.visibilityAndImageScreenProfilePictureImageFieldStyle,
        t,
      ),
    );
  }
}
