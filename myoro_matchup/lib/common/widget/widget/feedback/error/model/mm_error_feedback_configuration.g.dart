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

  MmErrorFeedbackConfiguration copyWith({
    String? title,
    String? subtitle,
    bool subtitleProvided = true,
    void Function()? retryCallback,
  }) {
    return MmErrorFeedbackConfiguration(
      title: title ?? self.title,
      subtitle: subtitleProvided ? (subtitle ?? self.subtitle) : null,
      retryCallback: retryCallback ?? self.retryCallback,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is MmErrorFeedbackConfiguration &&
        other.runtimeType == runtimeType &&
        other.retryCallback == self.retryCallback &&
        other.icon == self.icon &&
        other.title == self.title &&
        other.subtitle == self.subtitle &&
        other.actionButtonConfiguration == self.actionButtonConfiguration;
  }

  @override
  int get hashCode {
    return Object.hash(
      self.retryCallback,
      self.icon,
      self.title,
      self.subtitle,
      self.actionButtonConfiguration,
    );
  }

  @override
  String toString() =>
      'MmErrorFeedbackConfiguration(\n'
      '  retryCallback: ${self.retryCallback},\n'
      '  icon: ${self.icon},\n'
      '  title: ${self.title},\n'
      '  subtitle: ${self.subtitle},\n'
      '  actionButtonConfiguration: ${self.actionButtonConfiguration},\n'
      ');';
}
