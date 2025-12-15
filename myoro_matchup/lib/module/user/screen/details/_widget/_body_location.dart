part of '../widget/user_details_screen.dart';

/// Location of [UserDetailsScreen].
final class _BodyLocation extends StatelessWidget {
  /// Default constructor.
  const _BodyLocation(this._user);

  /// User.
  final UserResponseDto _user;

  /// Build function.
  @override
  Widget build(context) {
    final userDetailsScreenBodyLocationTitle = localization.userDetailsScreenBodyLocationTitle;
    final userDetailsScreenBodyLocationLabel = localization.userDetailsScreenBodyLocationLabel;
    final userDetailsScreenBodyLocationCountryLabel = localization.userDetailsScreenBodyLocationCountryLabel;
    final userDetailsScreenBodyLocationStateLabel = localization.userDetailsScreenBodyLocationStateLabel;
    final userDetailsScreenBodyLocationCityLabel = localization.userDetailsScreenBodyLocationCityLabel;

    final themeExtension = context.resolveThemeExtension<UserDetailsScreenThemeExtension>();
    final bodyLocationLabelTextStyle = themeExtension.bodyLocationLabelTextStyle;
    final bodyLocationSpacing = themeExtension.bodyLocationSpacing;

    final location = _user.location;
    final city = location.city ?? kMyoroEmptyString;
    final state = location.state ?? kMyoroEmptyString;
    final country = location.country;

    return _BodyCard(
      userDetailsScreenBodyLocationTitle,
      Column(
        spacing: bodyLocationSpacing,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(userDetailsScreenBodyLocationLabel, style: bodyLocationLabelTextStyle),
              MyoroIconTextButton(icon: Icons.edit, onTapUp: (_, _) => _LocationEditingBottomSheet.show(context)),
            ],
          ),
          MyoroField(label: userDetailsScreenBodyLocationCountryLabel, data: country.name(context)),
          if (state.isNotEmpty) MyoroField(label: userDetailsScreenBodyLocationStateLabel, data: state),
          if (city.isNotEmpty) MyoroField(label: userDetailsScreenBodyLocationCityLabel, data: city),
        ],
      ),
    );
  }
}
