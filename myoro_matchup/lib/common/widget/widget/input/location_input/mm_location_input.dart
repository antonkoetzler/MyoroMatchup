import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:myoro_matchup/myoro_matchup.dart';
import 'package:provider/provider.dart';

/// Location input.
final class MmLocationInput extends StatelessWidget {
  const MmLocationInput({super.key, required this.configuration});

  /// Configuration.
  final MmLocationInputConfiguration configuration;

  @override
  Widget build(_) {
    final type = configuration.type;
    final label = type.label;

    return InheritedProvider(
      create: (_) => MmLocationInputViewModel(configuration),
      child: MyoroSearchInput(
        configuration: MyoroSearchInputConfiguration(
          inputConfiguration: MyoroInputConfiguration(label: label),
          request: (_) => {},
          itemBuilder: (_) => MyoroMenuItem.fake(),
        ),
      ),
    );
  }
}
