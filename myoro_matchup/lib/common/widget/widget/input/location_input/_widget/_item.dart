part of '../mm_location_input.dart';

/// Item of a [MmLocationInput].
final class _Item extends StatelessWidget {
  const _Item(this._item);

  /// Item.
  final LocationResponseDto _item;

  @override
  Widget build(context) {
    final themeExtension = context.resolveThemeExtension<MmLocationInputThemeExtension>();
    final itemNameTextStyle = themeExtension.itemNameTextStyle;
    final itemCityCountryTextStyle = themeExtension.itemCityCountryTextStyle;

    final name = _item.name;
    final city = _item.city;
    final country = _item.country;

    final nameProvided = name.isNotEmpty;

    final mmLocationInputItemCityCountryText = localization.mmLocationInputItemCityCountryText;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (nameProvided) Text(name, style: itemNameTextStyle),
        if (city.isNotEmpty && country != null)
          Text(
            mmLocationInputItemCityCountryText(city, country.emoji, country.name(context)),
            style: itemCityCountryTextStyle,
          ),
      ],
    );
  }
}
