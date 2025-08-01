// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mm_feedback_action_button_configuration.dart';

// **************************************************************************
// MyoroModelGenerator
// **************************************************************************

/// Apply this mixin to [MmFeedbackActionButtonConfiguration] once the code is generated.
///
/// ```dart
/// class MmFeedbackActionButtonConfiguration with _$MmFeedbackActionButtonConfigurationMixin {}
/// ```
mixin _$MmFeedbackActionButtonConfigurationMixin {
  MmFeedbackActionButtonConfiguration get self =>
      this as MmFeedbackActionButtonConfiguration;

  MmFeedbackActionButtonConfiguration copyWith({
    String? text,
    void Function()? onTapUp,
  }) {
    return MmFeedbackActionButtonConfiguration(
      text: text ?? self.text,
      onTapUp: onTapUp ?? self.onTapUp,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is MmFeedbackActionButtonConfiguration &&
        other.runtimeType == runtimeType &&
        other.text == self.text &&
        other.onTapUp == self.onTapUp;
  }

  @override
  int get hashCode {
    return Object.hash(self.text, self.onTapUp);
  }

  @override
  String toString() =>
      'MmFeedbackActionButtonConfiguration(\n'
      '  text: ${self.text},\n'
      '  onTapUp: ${self.onTapUp},\n'
      ');';
}
