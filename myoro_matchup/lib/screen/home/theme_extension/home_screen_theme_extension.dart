import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:myoro_matchup/myoro_matchup.dart';

part 'home_screen_theme_extension.g.dart';

/// [ThemeExtension] of [HomeScreen].
@immutable
@myoroThemeExtension
final class HomeScreenThemeExtension extends ThemeExtension<HomeScreenThemeExtension>
    with _$HomeScreenThemeExtensionMixin {
  const HomeScreenThemeExtension({required this.errorStateTextStyle});

  HomeScreenThemeExtension.fake() : errorStateTextStyle = myoroFake<TextStyle>();

  HomeScreenThemeExtension.builder(TextTheme textTheme)
    : errorStateTextStyle = textTheme.headlineMedium!.withColor(MyoroColors.red1);

  /// [TextStyle] of the error message text.
  final TextStyle errorStateTextStyle;

  @override
  HomeScreenThemeExtension lerp(covariant ThemeExtension<HomeScreenThemeExtension>? other, double t) {
    if (other is! HomeScreenThemeExtension) return this;
    return copyWith(errorStateTextStyle: TextStyle.lerp(errorStateTextStyle, other.errorStateTextStyle, t));
  }
}
