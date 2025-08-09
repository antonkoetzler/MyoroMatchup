import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_matchup/myoro_matchup.dart';

part 'mm_image_picker_configuration.g.dart';

/// Configuration model of [MmImagePicker].
@immutable
@myoroModel
final class MmImagePickerConfiguration with _$MmImagePickerConfigurationMixin {
  const MmImagePickerConfiguration({required this.type, this.initialImage});

  /// Type of [MmImagePicker].
  final MmImagePickerEnum type;

  /// Initially selected image.
  final String? initialImage;
}
