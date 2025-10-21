part of '../game_creation_screen.dart';

/// Button radio selection.
final class _ButtonRadioSelection<T> extends StatelessWidget {
  const _ButtonRadioSelection(this._textBuilder, this._selectedItem, this._onTapUp, this._items);

  final String Function(T) _textBuilder;
  final T? _selectedItem;
  final void Function(T) _onTapUp;
  final Iterable<T> _items;

  @override
  Widget build(context) {
    final themeExtension = context.resolveThemeExtension<GameCreationScreenThemeExtension>();
    final spacing = themeExtension.spacing;

    return Wrap(
      spacing: spacing,
      runSpacing: spacing,
      children: _items.map((item) {
        final isSelected = item == _selectedItem;
        return _Button(_textBuilder(item), () => _onTapUp(item), isSelected);
      }).toList(),
    );
  }
}
