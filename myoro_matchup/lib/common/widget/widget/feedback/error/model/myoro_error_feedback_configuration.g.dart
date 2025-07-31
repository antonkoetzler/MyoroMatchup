// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'myoro_error_feedback_configuration.dart';

// **************************************************************************
// MyoroModelGenerator
// **************************************************************************

/// Apply this mixin to [MyoroErrorFeedbackConfiguration] once the code is generated.
///
/// ```dart
/// class MyoroErrorFeedbackConfiguration with _$MyoroErrorFeedbackConfigurationMixin {}
/// ```
mixin _$MyoroErrorFeedbackConfigurationMixin {
  MyoroErrorFeedbackConfiguration get self =>
      this as MyoroErrorFeedbackConfiguration;

  MyoroErrorFeedbackConfiguration copyWith({
    String? title,
    String? subtitle,
    bool subtitleProvided = true,
    void Function()? retryCallback,
  }) {
    return MyoroErrorFeedbackConfiguration(
      title: title ?? self.title,
      subtitle: subtitleProvided ? (subtitle ?? self.subtitle) : null,
      retryCallback: retryCallback ?? self.retryCallback,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is MyoroErrorFeedbackConfiguration &&
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
      'MyoroErrorFeedbackConfiguration(\n'
      '  retryCallback: ${self.retryCallback},\n'
      '  icon: ${self.icon},\n'
      '  title: ${self.title},\n'
      '  subtitle: ${self.subtitle},\n'
      '  actionButtonConfiguration: ${self.actionButtonConfiguration},\n'
      ');';
}
