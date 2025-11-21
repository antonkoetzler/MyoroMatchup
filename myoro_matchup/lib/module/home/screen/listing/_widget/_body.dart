part of '../home_screen.dart';

/// Body of [HomeScreen].
final class _Body extends StatelessWidget {
  const _Body();

  @override
  Widget build(context) {
    return const Column(
      children: [
        _BodyUserSportStats(),
        MyoroBasicDivider(Axis.horizontal),
        Expanded(child: _BodyUserGameListing()),
      ],
    );
  }
}
