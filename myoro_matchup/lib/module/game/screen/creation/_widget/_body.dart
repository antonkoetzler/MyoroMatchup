part of '../game_creation_screen.dart';

/// Body of [GameCreationScreen].
final class _Body extends StatelessWidget {
  const _Body();

  @override
  Widget build(context) {
    final themeExtension = context.resolveThemeExtension<GameCreationScreenThemeExtension>();

    final viewModel = context.read<GameCreationScreenViewModel>();

    return ListenableBuilder(
      listenable: viewModel.state,
      builder: (_, _) {
        final state = viewModel.state;

        return MyoroSingleChildScrollable(
          child: Column(
            spacing: themeExtension.spacing,
            mainAxisSize: MainAxisSize.min,
            children: [
              const _BannerField(),
              const _ProfilePictureField(),
              // _FieldRow([const Expanded(child: _NameField()), Expanded(child: _SportField(state))]),
              // _FieldRow([const Expanded(child: _CompetitivenessField()), Expanded(child: _PlayerQuantityField(state))]),
              // const _FieldRow([Expanded(child: _OneTimePriceField()), Expanded(child: _MemberPriceField())]),
              // const _AgeRangeField(),
              // const _VisibilityField(),
              // const _LocationField(),
              // const _FieldRow([Expanded(child: _FrequencyField()), Expanded(child: _DateField())]),
              // const _TimeField(),
            ],
          ),
        );
      },
    );
  }
}
