// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'myoro_feedback_action_button_configuration.dart';

// **************************************************************************
// MyoroModelGenerator
// **************************************************************************

/// Apply this mixin to [MyoroFeedbackActionButtonConfiguration] once the code is generated.
///
/// ```dart
/// class MyoroFeedbackActionButtonConfiguration with _$MyoroFeedbackActionButtonConfigurationMixin {}
/// ```
mixin _$MyoroFeedbackActionButtonConfigurationMixin {
  MyoroFeedbackActionButtonConfiguration get self =>
      this as MyoroFeedbackActionButtonConfiguration;

  MyoroFeedbackActionButtonConfiguration copyWith({
    String? text,
    void Function()? onTapUp,
  }) {
    return MyoroFeedbackActionButtonConfiguration(
      text: text ?? self.text,
      onTapUp: onTapUp ?? self.onTapUp,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is MyoroFeedbackActionButtonConfiguration &&
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
      'MyoroFeedbackActionButtonConfiguration(\n'
      '  text: ${self.text},\n'
      '  onTapUp: ${self.onTapUp},\n'
      ');';
}
