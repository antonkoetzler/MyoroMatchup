import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_matchup/myoro_matchup.dart';

part 'friend_listing_screen_theme_extension.g.dart';

/// [ThemeExtension] of [FriendListingScreen].
@immutable
@myoroThemeExtension
final class FriendListingScreenThemeExtension extends ThemeExtension<FriendListingScreenThemeExtension>
    with _$FriendListingScreenThemeExtensionMixin {
  /// Default constructor.
  const FriendListingScreenThemeExtension();

  /// Fake constructor.
  const FriendListingScreenThemeExtension.fake();

  /// Builder constructor.
  const FriendListingScreenThemeExtension.builder();

  /// Lerp function.
  @override
  FriendListingScreenThemeExtension lerp(ThemeExtension<FriendListingScreenThemeExtension>? other, double t) {
    if (other is! FriendListingScreenThemeExtension) return this;
    return copyWith();
  }
}
