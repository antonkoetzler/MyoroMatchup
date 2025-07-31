// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'myoro_feedback_configuration.dart';

// **************************************************************************
// MyoroModelGenerator
// **************************************************************************

/// Apply this mixin to [MyoroFeedbackConfiguration] once the code is generated.
///
/// ```dart
/// class MyoroFeedbackConfiguration with _$MyoroFeedbackConfigurationMixin {}
/// ```
mixin _$MyoroFeedbackConfigurationMixin {
  MyoroFeedbackConfiguration get self => this as MyoroFeedbackConfiguration;

  MyoroFeedbackConfiguration copyWith({
    IconData? icon,
    String? title,
    String? subtitle,
    MyoroFeedbackActionButtonConfiguration? actionButtonConfiguration,
    bool actionButtonConfigurationProvided = true,
  }) {
    return MyoroFeedbackConfiguration(
      icon: icon ?? self.icon,
      title: title ?? self.title,
      subtitle: subtitle ?? self.subtitle,
      actionButtonConfiguration: actionButtonConfigurationProvided
          ? (actionButtonConfiguration ?? self.actionButtonConfiguration)
          : null,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is MyoroFeedbackConfiguration &&
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
      'MyoroFeedbackConfiguration(\n'
      '  icon: ${self.icon},\n'
      '  title: ${self.title},\n'
      '  subtitle: ${self.subtitle},\n'
      '  actionButtonConfiguration: ${self.actionButtonConfiguration},\n'
      ');';
}
