import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_matchup/myoro_matchup.dart';

/// Configuration model of [MmImagePicker].
@immutable
@myoroModel
final class MmImagePickerConfiguration with _$MmImagePickerConfigurationMixin {
  const MmImagePickerConfiguration({this.initialImage, required this.builder});

  /// Initially selected image.
  final String? initialImage;

  /// [Widget] builder.
  final MmImagePickerBuilder builder;
}
