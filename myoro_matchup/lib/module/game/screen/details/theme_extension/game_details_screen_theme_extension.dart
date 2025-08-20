import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:myoro_matchup/myoro_matchup.dart';

part 'game_details_screen_theme_extension.g.dart';

/// [ThemeExtension] of [GameDetailsScreen].
@immutable
@myoroThemeExtension
final class GameDetailsScreenThemeExtension extends ThemeExtension<GameDetailsScreenThemeExtension>
    with _$GameDetailsScreenThemeExtensionMixin {
  const GameDetailsScreenThemeExtension({
    required this.errorStatePadding,
    required this.appBarOptionsIconConfiguration,
  });

  GameDetailsScreenThemeExtension.fake()
    : errorStatePadding = myoroFake<EdgeInsets>(),
      appBarOptionsIconConfiguration = MyoroIconConfiguration.fake();

  const GameDetailsScreenThemeExtension.builder()
    : errorStatePadding = const EdgeInsets.all(kMyoroMultiplier * 4),
      appBarOptionsIconConfiguration = const MyoroIconConfiguration(icon: Icons.more_vert, size: kMyoroMultiplier * 6);

  /// [EdgeInsets] of the error state's content.
  final EdgeInsets errorStatePadding;

  /// [MyoroIconConfiguration] of the app bar options button.
  final MyoroIconConfiguration appBarOptionsIconConfiguration;

  @override
  ThemeExtension<GameDetailsScreenThemeExtension> lerp(
    covariant ThemeExtension<GameDetailsScreenThemeExtension>? other,
    double t,
  ) {
    if (other is! GameDetailsScreenThemeExtension) return this;
    return copyWith(
      errorStatePadding: EdgeInsets.lerp(errorStatePadding, other.errorStatePadding, t),
      appBarOptionsIconConfiguration: MyoroIconConfiguration.lerp(
        appBarOptionsIconConfiguration,
        other.appBarOptionsIconConfiguration,
        t,
      ),
    );
  }
}
