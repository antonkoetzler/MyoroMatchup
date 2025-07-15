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
  const GameScreenThemeExtension({
    required this.errorStateTextStyle,
    required this.gameNameTextStyle,
    required this.gameSportNameTextStyle,
  });

  GameScreenThemeExtension.fake()
    : errorStateTextStyle = myoroFake<TextStyle>(),
      gameNameTextStyle = myoroFake<TextStyle>(),
      gameSportNameTextStyle = myoroFake<TextStyle>();

  GameScreenThemeExtension.builder(TextTheme textTheme)
    : errorStateTextStyle = textTheme.headlineMedium!.withColor(MyoroColors.red1),
      gameNameTextStyle = textTheme.titleMedium!,
      gameSportNameTextStyle = textTheme.labelSmall!;

  /// [TextStyle] of the error message text.
  final TextStyle errorStateTextStyle;

  /// [TextStyle] of the name of a [Game] item.
  final TextStyle gameNameTextStyle;

  /// [TextStyle] of the name of the [SportsEnum] of the [Game].
  final TextStyle gameSportNameTextStyle;

  @override
  GameScreenThemeExtension lerp(covariant ThemeExtension<GameScreenThemeExtension>? other, double t) {
    if (other is! GameScreenThemeExtension) return this;
    return copyWith(
      errorStateTextStyle: TextStyle.lerp(errorStateTextStyle, other.errorStateTextStyle, t),
      gameNameTextStyle: TextStyle.lerp(gameNameTextStyle, other.gameNameTextStyle, t),
      gameSportNameTextStyle: TextStyle.lerp(gameSportNameTextStyle, other.gameSportNameTextStyle, t),
    );
  }
}
