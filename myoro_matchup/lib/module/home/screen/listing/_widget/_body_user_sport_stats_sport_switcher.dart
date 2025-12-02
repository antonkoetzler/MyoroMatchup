part of '../home_screen.dart';

/// Sport switcher of [_BodyUserSportStats].
final class _BodyUserSportStatsSportSwitcher extends StatelessWidget {
  /// Default constructor.
  const _BodyUserSportStatsSportSwitcher(this._selectedSport);

  /// Selected sport.
  final SportsEnum _selectedSport;

  @override
  Widget build(context) {
    final themeExtension = context.resolveThemeExtension<HomeScreenThemeExtension>();
    final bodyUserSportStatsSportSwitcherStyle = themeExtension.bodyUserSportStatsSportSwitcherStyle;

    final viewModel = context.read<HomeScreenViewModel>();
    final bodyUserSportStatsSportSwitcherItemBuilder = viewModel.bodyUserSportStatsSportSwitcherItemBuilder;
    final bodyUserSportStatsSportSwitcherSelectedItemBuilder =
        viewModel.bodyUserSportStatsSportSwitcherSelectedItemBuilder;
    final bodyUserSportStatsSportSwitcherOnChanged = viewModel.bodyUserSportStatsSportSwitcherOnChanged;

    return MyoroSingleSelectionDropdown<SportsEnum>(
      style: bodyUserSportStatsSportSwitcherStyle,
      items: SportsEnum.values.toSet(),
      selectedItem: _selectedSport,
      allowDeselection: false,
      itemBuilder: bodyUserSportStatsSportSwitcherItemBuilder,
      selectedItemBuilder: bodyUserSportStatsSportSwitcherSelectedItemBuilder,
      onChanged: (s) => bodyUserSportStatsSportSwitcherOnChanged(s!),
    );
  }
}
