part of '../widget/game_details_screen.dart';

/// Action button of [_InvitationBottomSheet].
final class _InvitationBottomSheetActionButton extends StatelessWidget {
  /// Default constructor.
  const _InvitationBottomSheetActionButton(this._text, this._onTapUp, this._isSecondary, [this._isLoading = false]);

  /// Action button text.
  final String _text;

  /// Action button on tap up.
  final VoidCallback _onTapUp;

  /// If it's secondary style.
  final bool _isSecondary;

  /// If it's loading.
  final bool _isLoading;

  /// Build function.
  @override
  Widget build(context) {
    return MyoroIconTextButton(
      style:
          (_isSecondary
                  ? const MyoroIconTextButtonStyle().secondary(context)
                  : const MyoroIconTextButtonStyle().bordered(context))
              .copyWith(textStyle: const MyoroTextStyle(alignment: TextAlign.center)),
      text: _text,
      isLoading: _isLoading,
      onTapUp: (_, _) => _onTapUp(),
    );
  }
}
