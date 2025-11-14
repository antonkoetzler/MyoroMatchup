import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:myoro_matchup/myoro_matchup.dart';

part '_widget/_banner.dart';
part '_widget/_divider.dart';
part '_widget/_profile_picture.dart';
part '_widget/_info_bar.dart';
part '_widget/_game_name.dart';
part '_widget/_sport_name.dart';

/// Generic [Widget] that displays a card with the basic information of a [Game].
final class GameCard extends StatelessWidget {
  const GameCard(this._game, {super.key, this.displayDividerBetweenBannerAndInfoBar = false, this.onTapUp});

  /// The [Game].
  final GameResponseDto _game;

  /// If there should be a divider between [_Banner] and [_InfoBar].
  final bool displayDividerBetweenBannerAndInfoBar;

  /// [MyoroButtonConfiguration.onTapUp] of the [GameCard].
  final VoidCallback? onTapUp;

  @override
  Widget build(_) {
    return Column(mainAxisSize: MainAxisSize.min, children: [_Banner(_game), if (displayDividerBetweenBannerAndInfoBar) const _Divider(), _InfoBar(_game)]);
  }
}
