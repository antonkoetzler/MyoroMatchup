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

  MmEmptyFeedbackConfiguration copyWith({
    String? title,
    String? subtitle,
    bool subtitleProvided = true,
    MmFeedbackActionButtonConfiguration? actionButtonConfiguration,
    bool actionButtonConfigurationProvided = true,
  }) {
    return MmEmptyFeedbackConfiguration(
      title: title ?? self.title,
      subtitle: subtitleProvided ? (subtitle ?? self.subtitle) : null,
      actionButtonConfiguration: actionButtonConfigurationProvided
          ? (actionButtonConfiguration ?? self.actionButtonConfiguration)
          : null,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is MmEmptyFeedbackConfiguration &&
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
      'MmEmptyFeedbackConfiguration(\n'
      '  icon: ${self.icon},\n'
      '  title: ${self.title},\n'
      '  subtitle: ${self.subtitle},\n'
      '  actionButtonConfiguration: ${self.actionButtonConfiguration},\n'
      ');';
}
