import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:myoro_matchup/myoro_matchup.dart';

part 'mm_location_input_theme_extension.g.dart';

/// [ThemeExtension] of [MmLocationInput].
@immutable
@myoroThemeExtension
final class MmLocationInputThemeExtension extends ThemeExtension<MmLocationInputThemeExtension>
    with _$MmLocationInputThemeExtensionMixin {
  /// Default constructor.
  const MmLocationInputThemeExtension({required this.itemNameTextStyle, required this.itemCityCountryTextStyle});

  /// Fake constructor.
  MmLocationInputThemeExtension.fake()
    : itemNameTextStyle = myoroFake<TextStyle>(),
      itemCityCountryTextStyle = myoroFake<TextStyle>();

  /// Builder constructor.
  MmLocationInputThemeExtension.builder(TextTheme textTheme)
    : itemNameTextStyle = textTheme.titleSmall!,
      itemCityCountryTextStyle = textTheme.bodySmall!;

  /// [TextStyle] of the item name.
  final TextStyle itemNameTextStyle;

  /// [TextStyle] of the item city and country.
  final TextStyle itemCityCountryTextStyle;

  /// Lerp function.
  @override
  MmLocationInputThemeExtension lerp(covariant ThemeExtension<MmLocationInputThemeExtension>? other, double t) {
    if (other is! MmLocationInputThemeExtension) return this;
    return copyWith(
      itemNameTextStyle: TextStyle.lerp(itemNameTextStyle, other.itemNameTextStyle, t),
      itemCityCountryTextStyle: TextStyle.lerp(itemCityCountryTextStyle, other.itemCityCountryTextStyle, t),
    );
  }
}
