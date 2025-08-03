part of '../game_card.dart';

/// Divider between [_Banner] and [_InfoBar].
final class _Divider extends StatelessWidget {
  const _Divider();

  @override
  Widget build(_) {
    return const MyoroBasicDivider(configuration: MyoroBasicDividerConfiguration(direction: Axis.horizontal));
  }
}
