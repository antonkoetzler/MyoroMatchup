// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mm_empty_feedback_configuration.dart';

// **************************************************************************
// MyoroModelGenerator
// **************************************************************************

/// Apply this mixin to [MmEmptyFeedbackConfiguration] once the code is generated.
///
/// ```dart
/// class MmEmptyFeedbackConfiguration with _$MmEmptyFeedbackConfigurationMixin {}
/// ```
mixin _$MmEmptyFeedbackConfigurationMixin {
  MmEmptyFeedbackConfiguration get self => this as MmEmptyFeedbackConfiguration;

  @override
  bool operator ==(Object other) {
    return other is MmEmptyFeedbackConfiguration &&
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
      'MmEmptyFeedbackConfiguration(\n'
      '  iconConfiguration: ${self.iconConfiguration},\n'
      '  titleConfiguration: ${self.titleConfiguration},\n'
      '  subtitleConfiguration: ${self.subtitleConfiguration},\n'
      '  actionButtonConfiguration: ${self.actionButtonConfiguration},\n'
      ');';
}

/// Extension class for @myoroModel to place the copyWith function.
extension $MmEmptyFeedbackConfigurationExtension
    on MmEmptyFeedbackConfiguration {
  MmEmptyFeedbackConfiguration copyWith({
    required String title,
    String? subtitle,
    String? actionButtonText,
    void Function()? actionButtonCallback,
  }) {
    return MmEmptyFeedbackConfiguration(
      title: title,
      subtitle: subtitle,
      actionButtonText: actionButtonText,
      actionButtonCallback: actionButtonCallback,
    );
  }
}
