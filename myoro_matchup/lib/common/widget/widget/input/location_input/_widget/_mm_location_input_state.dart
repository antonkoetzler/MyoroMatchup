part of '../mm_location_input.dart';

/// [State] of [MmLocationInput].
final class _MmLocationInputState extends State<MmLocationInput> {
  /// View model.
  late final MmLocationInputViewModel _viewModel;

  /// Initialize state function.
  @override
  void initState() {
    super.initState();
    _viewModel = getIt<MmLocationInputViewModel>()..init(widget.type);
  }

  /// Build state function.
  @override
  Widget build(_) {
    final state = _viewModel.state;
    final type = state.type;
    final label = type.label;
    final request = _viewModel.request;
    final itemBuilder = _viewModel.itemBuilder;
    final selectedItemBuilder = _viewModel.selectedItemBuilder;

    return InheritedProvider.value(
      value: _viewModel,
      child: MyoroSearchInput<Location>(
        label: label,
        request: request,
        itemBuilder: (item) => itemBuilder(() => const _Item()),
        selectedItemBuilder: selectedItemBuilder,
      ),
    );
  }
}
