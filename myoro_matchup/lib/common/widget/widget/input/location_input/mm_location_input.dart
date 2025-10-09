import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:myoro_matchup/myoro_matchup.dart';
import 'package:provider/provider.dart';

part '_widget/_item.dart';

/// Location input.
final class MmLocationInput extends StatefulWidget {
  const MmLocationInput({super.key, required this.configuration});

  /// Configuration.
  final MmLocationInputConfiguration configuration;

  @override
  State<MmLocationInput> createState() => _MmLocationInputState();
}

final class _MmLocationInputState extends State<MmLocationInput> {
  late final MmLocationInputViewModel _viewModel;

  @override
  void initState() {
    super.initState();
    _viewModel = getIt<MmLocationInputViewModel>()..init(widget.configuration);
  }

  @override
  Widget build(_) {
    final state = _viewModel.state;
    final configuration = state.configuration;
    final type = configuration.type;
    final label = type.label;
    final request = _viewModel.request;
    final itemBuilder = _viewModel.itemBuilder;
    final selectedItemBuilder = _viewModel.selectedItemBuilder;

    return InheritedProvider.value(
      value: _viewModel,
      child: MyoroSearchInput<Location>(
        configuration: MyoroSearchInputConfiguration(
          label: label,
          menuConfiguration: MyoroSearchInputMenuConfiguration(request: request, itemBuilder: (item) => itemBuilder(() => const _Item())),
          selectedItemBuilder: selectedItemBuilder,
        ),
      ),
    );
  }
}
