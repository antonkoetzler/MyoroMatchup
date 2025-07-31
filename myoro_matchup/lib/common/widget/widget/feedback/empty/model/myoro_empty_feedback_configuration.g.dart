// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'myoro_empty_feedback_configuration.dart';

// **************************************************************************
// MyoroModelGenerator
// **************************************************************************

/// Apply this mixin to [MyoroEmptyFeedbackConfiguration] once the code is generated.
///
/// ```dart
/// class MyoroEmptyFeedbackConfiguration with _$MyoroEmptyFeedbackConfigurationMixin {}
/// ```
mixin _$MyoroEmptyFeedbackConfigurationMixin {
  MyoroEmptyFeedbackConfiguration get self =>
      this as MyoroEmptyFeedbackConfiguration;

  MyoroEmptyFeedbackConfiguration copyWith({
    IconData? icon,
    String? title,
    String? subtitle,
    MyoroFeedbackActionButtonConfiguration? actionButtonConfiguration,
    bool actionButtonConfigurationProvided = true,
  }) {
    return MyoroEmptyFeedbackConfiguration(
      title: title ?? self.title,
      subtitle: subtitle ?? self.subtitle,
      actionButtonConfiguration: actionButtonConfigurationProvided
          ? (actionButtonConfiguration ?? self.actionButtonConfiguration)
          : null,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is MyoroEmptyFeedbackConfiguration &&
        other.runtimeType == runtimeType &&
        other.icon == self.icon &&
        other.title == self.title &&
        other.subtitle == self.subtitle &&
        other.actionButtonConfiguration == self.actionButtonConfiguration;
  }

  @override
  int get hashCode {
    return Object.hash(
      self.icon,
      self.title,
      self.subtitle,
      self.actionButtonConfiguration,
    );
  }

  @override
  String toString() =>
      'MyoroEmptyFeedbackConfiguration(\n'
      '  icon: ${self.icon},\n'
      '  title: ${self.title},\n'
      '  subtitle: ${self.subtitle},\n'
      '  actionButtonConfiguration: ${self.actionButtonConfiguration},\n'
      ');';
}
