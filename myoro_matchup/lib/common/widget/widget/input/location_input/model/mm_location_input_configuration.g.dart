// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mm_location_input_configuration.dart';

// **************************************************************************
// MyoroModelGenerator
// **************************************************************************

// coverage:ignore-file

/// Apply this mixin to [MmLocationInputConfiguration] once the code is generated.
///
/// ```dart
/// class MmLocationInputConfiguration with _$MmLocationInputConfigurationMixin {}
/// ```
mixin _$MmLocationInputConfigurationMixin {
  MmLocationInputConfiguration get self => this as MmLocationInputConfiguration;

  MmLocationInputConfiguration copyWith({MmLocationInputTypeEnum? type}) {
    return MmLocationInputConfiguration(type: type ?? self.type);
  }

  @override
  bool operator ==(Object other) {
    return other is MmLocationInputConfiguration &&
        other.runtimeType == runtimeType &&
        other.type == self.type;
  }

  @override
  int get hashCode {
    return Object.hashAll([self.type]);
  }

  @override
  String toString() =>
      'MmLocationInputConfiguration(\n'
      '  type: ${self.type},\n'
      ');';
}
