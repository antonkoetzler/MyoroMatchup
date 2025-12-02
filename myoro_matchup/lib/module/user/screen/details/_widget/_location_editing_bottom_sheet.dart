part of '../widget/user_details_screen.dart';

/// Location editing bottom sheet of [UserDetailsScreen].
final class _LocationEditingBottomSheet extends StatelessWidget {
  /// Show function.
  static void show(BuildContext context) {
    final userDetailsScreenLocationEditingBottomSheetTitle =
        localization.userDetailsScreenLocationEditingBottomSheetTitle;

    final viewModel = context.read<UserDetailsScreenViewModel>();
    final updateLocation = viewModel.updateLocation;

    final countryController = ValueNotifier<MyoroCountryEnum?>(null);
    final regionController = ValueNotifier<MyoroRegion?>(null);
    final cityController = ValueNotifier<MyoroCity?>(null);

    MyoroDialogModal.show(
      context,
      isBottomSheet: true,
      onConfirm: () {
        return updateLocation(
          countryController.value!,
          regionController.value?.name ?? kMyoroEmptyString,
          cityController.value?.name ?? kMyoroEmptyString,
        );
      },
      onSuccess: (_) {
        AppRouter.pop();
      },
      title: userDetailsScreenLocationEditingBottomSheetTitle,
      child: _LocationEditingBottomSheet._((country, region, city) {
        countryController.value = country;
        regionController.value = region;
        cityController.value = city;
      }),
    ).then((_) {
      countryController.dispose();
      regionController.dispose();
      cityController.dispose();
    });
  }

  /// Default constructor.
  const _LocationEditingBottomSheet._(this._onChanged);

  /// On changed.
  final MyoroCountryRegionCityDropdownOnChanged _onChanged;

  /// Build function.
  @override
  Widget build(context) {
    return MyoroCountryRegionCityDropdown(onChanged: _onChanged);
  }
}
