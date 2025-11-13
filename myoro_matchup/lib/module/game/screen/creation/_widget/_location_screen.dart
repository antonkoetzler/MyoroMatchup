part of '../game_creation_screen.dart';

/// Location screen of [GameCreationScreen].
final class _LocationScreen extends _Screen {
  _LocationScreen()
    : super(
        title: localization.gameCreationScreenLocationScreenTitle,
        onInit: (vm) => WidgetsBinding.instance.addPostFrameCallback((_) {
          vm.state.locationFocusNode.requestFocus();
        }),
        builder: (context) {
          final themeExtension = context.resolveThemeExtension<GameCreationScreenThemeExtension>();
          final spacing = themeExtension.spacing;
          final locationScreenCurrencyNotificationTextStyle =
              themeExtension.locationScreenCurrencyNotificationTextStyle;

          final viewModel = context.read<GameCreationScreenViewModel>();
          final onLocationChanged = viewModel.onLocationChanged;
          final state = viewModel.state;
          final locationController = state.locationController;
          final locationFocusNode = state.locationFocusNode;
          final onNext = viewModel.onNext;
          final locationValidation = viewModel.locationValidation;

          return ValueListenableBuilder(
            valueListenable: locationController,
            builder: (_, location, _) {
              final address = location?.address;
              final country = address?.country;

              return Column(
                mainAxisSize: MainAxisSize.min,
                spacing: spacing,
                children: [
                  Flexible(
                    child: MmLocationInput(
                      type: LocationTypeEnum.city,
                      onChanged: onLocationChanged,
                      focusNode: locationFocusNode,
                      validation: locationValidation,
                      onFieldSubmitted: (_) => onNext(),
                    ),
                  ),
                  if (location != null && country != null)
                    TweenAnimationBuilder<double>(
                      tween: Tween(begin: 0.0, end: 1.0),
                      duration: const Duration(milliseconds: 300),
                      builder: (_, opacity, __) => Opacity(
                        opacity: opacity,
                        child: Text(
                          localization.gameCreationScreenLocationScreenCurrencyNotificationText(
                            country.emoji,
                            location.name,
                            country.currency.longSymbol,
                          ),
                          textAlign: TextAlign.center,
                          style: locationScreenCurrencyNotificationTextStyle,
                        ),
                      ),
                    ),
                ],
              );
            },
          );
        },
      );
}
