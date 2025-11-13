part of '../game_creation_screen.dart';

/// Day button row of [GameCreationScreen].
final class _DayButtonRow extends StatelessWidget {
  /// Default constructor.
  const _DayButtonRow(this._controller);

  /// [ValueNotifier] of selected day.
  final ValueNotifier<MyoroDayEnum> _controller;

  @override
  Widget build(context) {
    final themeExtension = context.resolveThemeExtension<GameCreationScreenThemeExtension>();
    final spacing = themeExtension.spacing;

    return ValueListenableBuilder(
      valueListenable: _controller,
      builder: (_, selectedDay, _) {
        return Row(
          spacing: spacing,
          children: MyoroDayEnum.values.map((item) {
            final isSelected = item == selectedDay;
            return Expanded(
              child: _Button(
                text: item.getFirstLetter(context),
                onTapUp: () => _controller.value = item,
                isSecondary: isSelected,
              ),
            );
          }).toList(),
        );
      },
    );
  }
}
