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
      bodyNonEmptyStateScrollableStyle = myoroFake<MyoroScrollableStyle>();

  /// Builder constructor.
  FriendListingScreenThemeExtension.builder(TextTheme textTheme)
    : bodyNonEmptyStatePadding = const EdgeInsets.all(kEdgeInsetsLength),
      bodyNonEmptyStateScrollableStyle = const MyoroScrollableStyle(spacing: kEdgeInsetsLength);

  /// Body padding.
  final EdgeInsets bodyNonEmptyStatePadding;

  /// Body scrollable style.
  final MyoroScrollableStyle bodyNonEmptyStateScrollableStyle;

  /// Lerp function.
  @override
  FriendListingScreenThemeExtension lerp(ThemeExtension<FriendListingScreenThemeExtension>? other, double t) {
    if (other is! FriendListingScreenThemeExtension) return this;
    return copyWith(
      bodyNonEmptyStatePadding: EdgeInsets.lerp(bodyNonEmptyStatePadding, other.bodyNonEmptyStatePadding, t),
      bodyNonEmptyStateScrollableStyle: MyoroScrollableStyle.lerp(
        bodyNonEmptyStateScrollableStyle,
        other.bodyNonEmptyStateScrollableStyle,
        t,
      ),
    );
  }
}
