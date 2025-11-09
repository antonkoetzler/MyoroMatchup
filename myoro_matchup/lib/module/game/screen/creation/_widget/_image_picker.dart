part of '../game_creation_screen.dart';

/// Image picker of [GameCreationScreen].
final class _ImagePicker extends StatelessWidget {
  /// Default constructor.
  const _ImagePicker(this._label, this._onChanged, [this._style = const MyoroImagePickerStyle()]);

  /// Label.
  final String _label;

  /// Callback executed when an image is selected or unselected.
  final MyoroImagePickerOnChanged _onChanged;

  /// Style.
  final MyoroImagePickerStyle _style;

  /// Build function.
  @override
  Widget build(context) => MyoroImagePicker(style: _style, label: _label, onChanged: _onChanged);
}
