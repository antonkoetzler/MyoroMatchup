import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:myoro_matchup/myoro_matchup.dart';

part 'game_listing_screen_theme_extension.g.dart';

/// [ThemeExtension] of [GameListingScreen].
@immutable
@myoroThemeExtension
final class GameListingScreenThemeExtension extends ThemeExtension<GameListingScreenThemeExtension>
    with _$GameListingScreenThemeExtensionMixin {
  const GameListingScreenThemeExtension({
    required this.bodySuccessStateMargin,
    required this.gameMargin,
    required this.gameBorderRadius,
    required this.errorStatePadding,
  });

  GameListingScreenThemeExtension.fake()
    : bodySuccessStateMargin = myoroFake<EdgeInsets>(),
      gameMargin = myoroFake<EdgeInsets>(),
      gameBorderRadius = myoroFake<BorderRadius>(),
      errorStatePadding = myoroFake<EdgeInsets>();

  GameListingScreenThemeExtension.builder(ColorScheme colorScheme, TextTheme textTheme)
    : bodySuccessStateMargin = const EdgeInsets.symmetric(horizontal: kEdgeInsetsLength),
      gameMargin = const EdgeInsets.only(bottom: kEdgeInsetsLength),
      gameBorderRadius = BorderRadius.circular(kMyoroBorderRadius),
      errorStatePadding = const EdgeInsets.all(kEdgeInsetsLength * 4);

  /// [EdgeInsets] margin of the [Game] listing.
  final EdgeInsets bodySuccessStateMargin;

  /// [EdgeInsets] margin of a [Game] item.
  final EdgeInsets gameMargin;

  /// [BorderRadius] of a [Game] item.
  final BorderRadius gameBorderRadius;

  /// [EdgeInsets] padding of the error state's content.
  final EdgeInsets errorStatePadding;

  @override
  GameListingScreenThemeExtension lerp(covariant ThemeExtension<GameListingScreenThemeExtension>? other, double t) {
    if (other is! GameListingScreenThemeExtension) return this;
    return copyWith(
      bodySuccessStateMargin: EdgeInsets.lerp(bodySuccessStateMargin, other.bodySuccessStateMargin, t),
      gameMargin: EdgeInsets.lerp(gameMargin, other.gameMargin, t),
      gameBorderRadius: BorderRadius.lerp(gameBorderRadius, other.gameBorderRadius, t),
      errorStatePadding: EdgeInsets.lerp(errorStatePadding, other.errorStatePadding, t),
    );
  }
}
