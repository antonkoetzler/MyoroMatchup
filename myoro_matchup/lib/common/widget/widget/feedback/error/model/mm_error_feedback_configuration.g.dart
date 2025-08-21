// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mm_error_feedback_configuration.dart';

// **************************************************************************
// MyoroModelGenerator
// **************************************************************************

// coverage:ignore-file

/// Apply this mixin to [MmErrorFeedbackConfiguration] once the code is generated.
///
/// ```dart
/// class MmErrorFeedbackConfiguration with _$MmErrorFeedbackConfigurationMixin {}
/// ```
mixin _$MmErrorFeedbackConfigurationMixin {
  MmErrorFeedbackConfiguration get self => this as MmErrorFeedbackConfiguration;

  MmErrorFeedbackConfiguration copyWith({
    MyoroIconConfiguration? iconConfiguration,
    MyoroTextConfiguration? titleConfiguration,
    MyoroTextConfiguration? subtitleConfiguration,
    bool subtitleConfigurationProvided = true,
    MyoroIconTextButtonConfiguration? actionButtonConfiguration,
    bool actionButtonConfigurationProvided = true,
    String? title,
    String? subtitle,
    void Function()? onRetry,
  }) {
    assert(
      title != null,
      '[MmErrorFeedbackConfiguration.copyWith]: [title] cannot be null.',
    );
    assert(
      onRetry != null,
      '[MmErrorFeedbackConfiguration.copyWith]: [onRetry] cannot be null.',
    );

    return MmErrorFeedbackConfiguration(
      title: title!,
      subtitle: subtitle,
      onRetry: onRetry!,
    );
  }

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
