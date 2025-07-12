import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:myoro_matchup/myoro_matchup.dart';

part 'game_screen_theme_extension.g.dart';

/// [ThemeExtension] of [GameScreen].
@immutable
@myoroThemeExtension
final class GameScreenThemeExtension extends ThemeExtension<GameScreenThemeExtension>
    with _$GameScreenThemeExtensionMixin {
  const GameScreenThemeExtension({required this.errorStateTextStyle});

  GameScreenThemeExtension.fake() : errorStateTextStyle = myoroFake<TextStyle>();

  GameScreenThemeExtension.builder(TextTheme textTheme)
    : errorStateTextStyle = textTheme.headlineMedium!.withColor(MyoroColors.red1);

  /// [TextStyle] of the error message text.
  final TextStyle errorStateTextStyle;

  @override
  GameScreenThemeExtension lerp(covariant ThemeExtension<GameScreenThemeExtension>? other, double t) {
    if (other is! GameScreenThemeExtension) return this;
    return copyWith(errorStateTextStyle: TextStyle.lerp(errorStateTextStyle, other.errorStateTextStyle, t));
  }
}
