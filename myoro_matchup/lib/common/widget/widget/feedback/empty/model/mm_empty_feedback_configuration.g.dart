// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mm_empty_feedback_configuration.dart';

// **************************************************************************
// MyoroModelGenerator
// **************************************************************************

// coverage:ignore-file

/// Apply this mixin to [MmEmptyFeedbackConfiguration] once the code is generated.
///
/// ```dart
/// class MmEmptyFeedbackConfiguration with _$MmEmptyFeedbackConfigurationMixin {}
/// ```
mixin _$MmEmptyFeedbackConfigurationMixin {
  MmEmptyFeedbackConfiguration get self => this as MmEmptyFeedbackConfiguration;

  MmEmptyFeedbackConfiguration copyWith({
    MyoroIconConfiguration? iconConfiguration,
    MyoroTextConfiguration? titleConfiguration,
    MyoroTextConfiguration? subtitleConfiguration,
    bool subtitleConfigurationProvided = true,
    MyoroIconTextButtonConfiguration? actionButtonConfiguration,
    bool actionButtonConfigurationProvided = true,
    String? title,
    String? subtitle,
    String? actionButtonText,
    void Function()? actionButtonCallback,
  }) {
    assert(
      title != null,
      '[MmEmptyFeedbackConfiguration.copyWith]: [title] cannot be null.',
    );

    return MmEmptyFeedbackConfiguration(
      title: title!,
      subtitle: subtitle,
      actionButtonText: actionButtonText,
      actionButtonCallback: actionButtonCallback,
    );
  }

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
