part of '../widget/game_details_screen.dart';

/// Generic tab of [GameDetailsScreen].
final class _BodySuccessStateTabViewTab extends StatelessWidget {
  /// Default constructor.
  const _BodySuccessStateTabViewTab(this._child);

  /// Child.
  final Widget _child;

  @override
  Widget build(context) {
    final themeExtension = context.resolveThemeExtension<GameDetailsScreenThemeExtension>();
    final bodySuccessStateTabViewInfoTabContentPadding = themeExtension.bodySuccessStateTabViewInfoTabContentPadding;
    return Padding(padding: bodySuccessStateTabViewInfoTabContentPadding, child: _child);
  }
}
