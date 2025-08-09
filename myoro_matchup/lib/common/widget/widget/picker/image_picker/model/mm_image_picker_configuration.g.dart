// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mm_image_picker_configuration.dart';

// **************************************************************************
// MyoroModelGenerator
// **************************************************************************

/// Apply this mixin to [MmImagePickerConfiguration] once the code is generated.
///
/// ```dart
/// class MmImagePickerConfiguration with _$MmImagePickerConfigurationMixin {}
/// ```
mixin _$MmImagePickerConfigurationMixin {
  MmImagePickerConfiguration get self => this as MmImagePickerConfiguration;

  @override
  bool operator ==(Object other) {
    return other is MmImagePickerConfiguration &&
        other.runtimeType == runtimeType &&
        other.type == self.type &&
        other.initialImage == self.initialImage;
  }

  @override
  int get hashCode {
    return Object.hash(self.type, self.initialImage);
  }

  @override
  String toString() =>
      'MmImagePickerConfiguration(\n'
      '  type: ${self.type},\n'
      '  initialImage: ${self.initialImage},\n'
      ');';
}

/// Extension class for @myoroModel to place the copyWith function.
extension $MmImagePickerConfigurationExtension on MmImagePickerConfiguration {
  MmImagePickerConfiguration copyWith({
    MmImagePickerEnum? type,
    String? initialImage,
    bool initialImageProvided = true,
  }) {
    return MmImagePickerConfiguration(
      type: type ?? self.type,
      initialImage: initialImageProvided
          ? (initialImage ?? self.initialImage)
          : null,
    );
  }
}
