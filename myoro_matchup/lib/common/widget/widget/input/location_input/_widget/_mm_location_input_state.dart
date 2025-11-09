part of '../mm_location_input.dart';

/// [State] of [MmLocationInput].
final class _MmLocationInputState extends State<MmLocationInput> {
  /// View model.
  final _viewModel = getIt<MmLocationInputViewModel>();

  /// Initialize state function.
  @override
  void initState() {
    super.initState();
    _viewModel.state
      ..type = widget.type
      ..onChanged = widget.onChanged
      ..focusNode = widget.focusNode
      ..validation = widget.validation
      ..onFieldSubmitted = widget.onFieldSubmitted;
  }

  /// Did update widget function.
  @override
  void didUpdateWidget(MmLocationInput oldWidget) {
    super.didUpdateWidget(oldWidget);
    _viewModel.state
      ..type = widget.type
      ..onChanged = widget.onChanged
      ..focusNode = widget.focusNode
      ..validation = widget.validation
      ..onFieldSubmitted = widget.onFieldSubmitted;
  }

  /// Build state function.
  @override
  Widget build(_) {
    final state = _viewModel.state;
    final type = state.type;
    final label = type.label;
    final requestCallback = _viewModel.requestCallback;
    final onChanged = state.onChanged;
    final focusNode = state.focusNode;
    final validation = state.validation;
    final onFieldSubmitted = state.onFieldSubmitted;

    return InheritedProvider.value(
      value: _viewModel,
      child: MyoroSearchInput<Location>(
        label: label,
        requestCallback: requestCallback,
        onChanged: onChanged,
        itemBuilder: (item) => MyoroMenuButtonItem(builder: (_, _) => _Item(item), onTapUp: (_) {}),
        selectedItemBuilder: (item) => item.name,
        validation: validation,
        focusNode: focusNode,
        onFieldSubmitted: onFieldSubmitted,
      ),
    );
  }
}
