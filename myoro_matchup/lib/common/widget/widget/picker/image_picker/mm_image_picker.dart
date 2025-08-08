import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:myoro_matchup/myoro_matchup.dart';
import 'package:provider/provider.dart';

part '_widget/_content.dart';
part '_widget/_overlay.dart';
part '_widget/_selected_image.dart';
part '_widget/_selected_image_unselected_state.dart';

/// Image picker [Widget] of MyoroMatchup.
final class MmImagePicker extends StatelessWidget {
  const MmImagePicker({super.key, required this.configuration});

  /// Configuration.
  final MmImagePickerConfiguration configuration;

  @override
  Widget build(_) {
    return InheritedProvider(create: (_) => MmImagePickerViewModel(configuration), child: const _Content());
  }
}
