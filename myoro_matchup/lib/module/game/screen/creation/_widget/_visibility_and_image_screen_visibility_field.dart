part of '../game_creation_screen.dart';

/// Visibility field of [_VisibilityAndImageScreen] in [GameCreationScreen].
final class _VisibilityAndImageScreenVisibilityField extends StatelessWidget {
  const _VisibilityAndImageScreenVisibilityField();

  @override
  Widget build(context) {
    final viewModel = context.read<GameCreationScreenViewModel>();
    final onVisibilityChanged = viewModel.onVisibilityChanged;
    final state = viewModel.state;
    final visibility = state.visibility;

    return MyoroSingleSelectionDropdown<GameVisibilityEnum>(
      selectedItem: visibility,
      itemBuilder: (_, item) => MyoroMenuIconTextButtonItem(
        icon: switch (item) {
          GameVisibilityEnum.private => Icons.lock,
          GameVisibilityEnum.public => Icons.public,
        },
        text: item.label,
      ),
      selectedItemBuilder: (item) => item.label,
      allowDeselection: false,
      items: GameVisibilityEnum.values.toSet(),
      onChanged: (item) => onVisibilityChanged(item!),
    );
  }
}
