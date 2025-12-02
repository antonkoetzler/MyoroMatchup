part of '../widget/game_details_screen.dart';

/// Player details bottom sheet of [GameDetailsScreen].
final class _PlayerDetailsBottomSheet extends StatelessWidget {
  /// Show function.
  static void show(BuildContext context, GamePlayerResponseDto player) {
    final viewModel = context.read<GameDetailsScreenViewModel>();
    MyoroModal.show(
      context,
      isBottomSheet: true,
      child: Provider.value(value: viewModel, child: _PlayerDetailsBottomSheet._(player)),
    );
  }

  /// Internal constructor.
  const _PlayerDetailsBottomSheet._(this._player);

  /// Player.
  final GamePlayerResponseDto _player;

  /// Build function.
  @override
  Widget build(context) {
    final playerDetailsBottomSheetAddAsFriendText = localization.playerDetailsBottomSheetAddAsFriendText;
    final playerDetailsBottomSheetBlockText = localization.playerDetailsBottomSheetBlockText;

    final themeExtension = context.resolveThemeExtension<GameDetailsScreenThemeExtension>();
    final playerDetailsBottomSheetSpacing = themeExtension.playerDetailsBottomSheetSpacing;
    final playerDetailsBottomSheetTitleTextStyle = themeExtension.playerDetailsBottomSheetTitleTextStyle;

    final username = _player.username;

    return Column(
      spacing: playerDetailsBottomSheetSpacing,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(username, style: playerDetailsBottomSheetTitleTextStyle),
        MyoroIconTextButton(
          text: playerDetailsBottomSheetAddAsFriendText,
          onTapUp: (_, _) {
            _SendFriendRequestConfirmationBottomSheet.show(context, _player);
          },
        ),
        MyoroIconTextButton(
          text: playerDetailsBottomSheetBlockText,
          onTapUp: (_, _) {
            _BlockUserConfirmationBottomSheet.show(context, _player);
          },
        ),
      ],
    );
  }
}
