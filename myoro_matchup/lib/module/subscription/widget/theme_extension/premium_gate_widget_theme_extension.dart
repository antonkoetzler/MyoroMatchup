import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:myoro_matchup/myoro_matchup.dart';

part 'premium_gate_widget_theme_extension.g.dart';

/// [ThemeExtension] of [PremiumGateWidget].
@immutable
@myoroThemeExtension
final class PremiumGateWidgetThemeExtension extends ThemeExtension<PremiumGateWidgetThemeExtension>
    with _$PremiumGateWidgetThemeExtensionMixin {
  /// Default constructor.
  const PremiumGateWidgetThemeExtension({
    required this.bottomSheetPadding,
    required this.iconSize,
    required this.iconColor,
    required this.titleSpacing,
    required this.titleTextStyle,
    required this.descriptionSpacing,
    required this.descriptionTextStyle,
    required this.buttonSpacing,
    required this.cancelButtonSpacing,
    required this.cardStyle,
    required this.cardIconSize,
    required this.cardTitleSpacing,
    required this.cardTitleTextStyle,
    required this.cardDescriptionSpacing,
    required this.cardDescriptionTextStyle,
    required this.cardButtonSpacing,
  });

  /// Fake constructor.
  PremiumGateWidgetThemeExtension.fake()
    : bottomSheetPadding = myoroFake<EdgeInsets>(),
      iconSize = myoroFake<double>(),
      iconColor = myoroFake<Color>(),
      titleSpacing = myoroFake<double>(),
      titleTextStyle = myoroFake<TextStyle>(),
      descriptionSpacing = myoroFake<double>(),
      descriptionTextStyle = myoroFake<TextStyle>(),
      buttonSpacing = myoroFake<double>(),
      cancelButtonSpacing = myoroFake<double>(),
      cardStyle = myoroFake<MyoroCardStyle>(),
      cardIconSize = myoroFake<double>(),
      cardTitleSpacing = myoroFake<double>(),
      cardTitleTextStyle = myoroFake<TextStyle>(),
      cardDescriptionSpacing = myoroFake<double>(),
      cardDescriptionTextStyle = myoroFake<TextStyle>(),
      cardButtonSpacing = myoroFake<double>();

  /// Builder constructor.
  PremiumGateWidgetThemeExtension.builder(ColorScheme colorScheme, TextTheme textTheme)
    : bottomSheetPadding = const EdgeInsets.all(kEdgeInsetsLength),
      iconSize = 48,
      iconColor = colorScheme.primary,
      titleSpacing = kMyoroMultiplier * 2,
      titleTextStyle = textTheme.titleLarge!,
      descriptionSpacing = kMyoroMultiplier,
      descriptionTextStyle = textTheme.bodyMedium!,
      buttonSpacing = kMyoroMultiplier * 3,
      cancelButtonSpacing = kMyoroMultiplier,
      cardStyle = MyoroCardStyle(
        padding: const EdgeInsets.all(kEdgeInsetsLength),
        border: Border.all(color: colorScheme.primary, width: kMyoroBorderWidth),
      ),
      cardIconSize = 32,
      cardTitleSpacing = kMyoroMultiplier,
      cardTitleTextStyle = textTheme.titleMedium!,
      cardDescriptionSpacing = kMyoroMultiplier / 2,
      cardDescriptionTextStyle = textTheme.bodySmall!,
      cardButtonSpacing = kMyoroMultiplier * 2;

  /// Bottom sheet padding.
  final EdgeInsets bottomSheetPadding;

  /// Icon size.
  final double iconSize;

  /// Icon color.
  final Color iconColor;

  /// Spacing below title.
  final double titleSpacing;

  /// Title text style.
  final TextStyle titleTextStyle;

  /// Spacing below description.
  final double descriptionSpacing;

  /// Description text style.
  final TextStyle descriptionTextStyle;

  /// Spacing above buttons.
  final double buttonSpacing;

  /// Spacing above cancel button.
  final double cancelButtonSpacing;

  /// Card style.
  final MyoroCardStyle cardStyle;

  /// Card icon size.
  final double cardIconSize;

  /// Card title spacing.
  final double cardTitleSpacing;

  /// Card title text style.
  final TextStyle cardTitleTextStyle;

  /// Card description spacing.
  final double cardDescriptionSpacing;

  /// Card description text style.
  final TextStyle cardDescriptionTextStyle;

  /// Card button spacing.
  final double cardButtonSpacing;

  /// Lerp function.
  @override
  PremiumGateWidgetThemeExtension lerp(ThemeExtension<PremiumGateWidgetThemeExtension>? other, double t) {
    if (other is! PremiumGateWidgetThemeExtension) return this;
    return copyWith(
      bottomSheetPadding: EdgeInsets.lerp(bottomSheetPadding, other.bottomSheetPadding, t),
      iconSize: lerpDouble(iconSize, other.iconSize, t),
      iconColor: Color.lerp(iconColor, other.iconColor, t),
      titleSpacing: lerpDouble(titleSpacing, other.titleSpacing, t),
      titleTextStyle: TextStyle.lerp(titleTextStyle, other.titleTextStyle, t),
      descriptionSpacing: lerpDouble(descriptionSpacing, other.descriptionSpacing, t),
      descriptionTextStyle: TextStyle.lerp(descriptionTextStyle, other.descriptionTextStyle, t),
      buttonSpacing: lerpDouble(buttonSpacing, other.buttonSpacing, t),
      cancelButtonSpacing: lerpDouble(cancelButtonSpacing, other.cancelButtonSpacing, t),
      cardStyle: MyoroCardStyle.lerp(cardStyle, other.cardStyle, t),
      cardIconSize: lerpDouble(cardIconSize, other.cardIconSize, t),
      cardTitleSpacing: lerpDouble(cardTitleSpacing, other.cardTitleSpacing, t),
      cardTitleTextStyle: TextStyle.lerp(cardTitleTextStyle, other.cardTitleTextStyle, t),
      cardDescriptionSpacing: lerpDouble(cardDescriptionSpacing, other.cardDescriptionSpacing, t),
      cardDescriptionTextStyle: TextStyle.lerp(cardDescriptionTextStyle, other.cardDescriptionTextStyle, t),
      cardButtonSpacing: lerpDouble(cardButtonSpacing, other.cardButtonSpacing, t),
    );
  }
}
