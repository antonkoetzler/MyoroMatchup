part of '../mm_location_input.dart';

/// Item of a [MmLocationInput].
final class _Item extends StatelessWidget {
  const _Item(this._item);

  /// Item.
  final Location _item;

  @override
  Widget build(context) {
    final themeExtension = context.resolveThemeExtension<MmLocationInputThemeExtension>();
    final itemNameTextStyle = themeExtension.itemNameTextStyle;
    final itemCityCountryTextStyle = themeExtension.itemCityCountryTextStyle;

    final name = _item.name;
    final address = _item.address;
    final city = address.city;
    final country = address.country;

    final nameProvided = name.isNotEmpty;
    final cityProvided = city.isNotEmpty;
    final countryProvided = country != null;

    final mmLocationInputItemCityCountryText = localization.mmLocationInputItemCityCountryText;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (nameProvided) Text(name, style: itemNameTextStyle),
        if (cityProvided && countryProvided)
          Text(
            mmLocationInputItemCityCountryText(city, country.emoji, country.name(context)),
            style: itemCityCountryTextStyle,
          ),
      ],
    );
  }
}
