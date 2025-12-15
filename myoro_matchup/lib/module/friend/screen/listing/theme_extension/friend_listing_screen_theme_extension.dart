import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:myoro_matchup/myoro_matchup.dart';

part 'friend_listing_screen_theme_extension.g.dart';

/// [ThemeExtension] of [FriendListingScreen].
@immutable
@myoroThemeExtension
final class FriendListingScreenThemeExtension extends ThemeExtension<FriendListingScreenThemeExtension>
    with _$FriendListingScreenThemeExtensionMixin {
  /// Default constructor.
  const FriendListingScreenThemeExtension({
    required this.bodyNonEmptyStatePadding,
    required this.bodyNonEmptyStateScrollableStyle,
  });

  /// Fake constructor.
  FriendListingScreenThemeExtension.fake()
    : bodyNonEmptyStatePadding = myoroFake<EdgeInsets>(),
      bodyNonEmptyStateScrollableStyle = myoroFake<MyoroListScrollableStyle>();

  /// Builder constructor.
  FriendListingScreenThemeExtension.builder(TextTheme textTheme)
    : bodyNonEmptyStatePadding = const EdgeInsets.all(kEdgeInsetsLength),
      bodyNonEmptyStateScrollableStyle = const MyoroListScrollableStyle(spacing: kEdgeInsetsLength);

  /// Body padding.
  final EdgeInsets bodyNonEmptyStatePadding;

  /// Body scrollable style.
  final MyoroListScrollableStyle bodyNonEmptyStateScrollableStyle;

  /// Lerp function.
  @override
  FriendListingScreenThemeExtension lerp(ThemeExtension<FriendListingScreenThemeExtension>? other, double t) {
    if (other is! FriendListingScreenThemeExtension) return this;
    return copyWith(
      bodyNonEmptyStatePadding: EdgeInsets.lerp(bodyNonEmptyStatePadding, other.bodyNonEmptyStatePadding, t),
      bodyNonEmptyStateScrollableStyle: MyoroListScrollableStyle.lerp(
        bodyNonEmptyStateScrollableStyle,
        other.bodyNonEmptyStateScrollableStyle,
        t,
      ),
    );
  }
}
