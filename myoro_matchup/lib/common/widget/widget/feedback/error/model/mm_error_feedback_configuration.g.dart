// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mm_error_feedback_configuration.dart';

// **************************************************************************
// MyoroModelGenerator
// **************************************************************************

/// Apply this mixin to [MmErrorFeedbackConfiguration] once the code is generated.
///
/// ```dart
/// class MmErrorFeedbackConfiguration with _$MmErrorFeedbackConfigurationMixin {}
/// ```
mixin _$MmErrorFeedbackConfigurationMixin {
  MmErrorFeedbackConfiguration get self => this as MmErrorFeedbackConfiguration;

  @override
  bool operator ==(Object other) {
    return other is MmErrorFeedbackConfiguration &&
        other.runtimeType == runtimeType &&
        other.iconConfiguration == self.iconConfiguration &&
        other.titleConfiguration == self.titleConfiguration &&
        other.subtitleConfiguration == self.subtitleConfiguration &&
        other.actionButtonConfiguration == self.actionButtonConfiguration;
  }

  @override
  int get hashCode {
    return Object.hash(
      self.iconConfiguration,
      self.titleConfiguration,
      self.subtitleConfiguration,
      self.actionButtonConfiguration,
    );
  }

  @override
  String toString() =>
      'MmErrorFeedbackConfiguration(\n'
      '  iconConfiguration: ${self.iconConfiguration},\n'
      '  titleConfiguration: ${self.titleConfiguration},\n'
      '  subtitleConfiguration: ${self.subtitleConfiguration},\n'
      '  actionButtonConfiguration: ${self.actionButtonConfiguration},\n'
      ');';
}

/// Extension class for @myoroModel to place the copyWith function.
extension $MmErrorFeedbackConfigurationExtension
    on MmErrorFeedbackConfiguration {
  MmErrorFeedbackConfiguration copyWith({
    required String title,
    String? subtitle,
    required void Function() onRetry,
  }) {
    return MmErrorFeedbackConfiguration(
      title: title,
      subtitle: subtitle,
      onRetry: onRetry,
    );
  }
}
