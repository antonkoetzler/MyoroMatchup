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
        other.initialImage == self.initialImage &&
        other.constraints == self.constraints;
  }

  @override
  int get hashCode {
    return Object.hash(self.initialImage, self.constraints);
  }

  @override
  String toString() =>
      'MmImagePickerConfiguration(\n'
      '  initialImage: ${self.initialImage},\n'
      '  constraints: ${self.constraints},\n'
      ');';
}

/// Extension class for @myoroModel to place the copyWith function.
extension $MmImagePickerConfigurationExtension on MmImagePickerConfiguration {
  MmImagePickerConfiguration copyWith({
    String? initialImage,
    bool initialImageProvided = true,
    BoxConstraints? constraints,
    bool constraintsProvided = true,
  }) {
    return MmImagePickerConfiguration(
      initialImage: initialImageProvided
          ? (initialImage ?? self.initialImage)
          : null,
      constraints: constraintsProvided
          ? (constraints ?? self.constraints)
          : null,
    );
  }
}
