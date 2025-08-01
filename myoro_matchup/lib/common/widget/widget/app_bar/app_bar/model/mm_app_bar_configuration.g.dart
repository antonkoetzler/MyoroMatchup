// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mm_app_bar_configuration.dart';

// **************************************************************************
// MyoroModelGenerator
// **************************************************************************

/// Apply this mixin to [MmAppBarConfiguration] once the code is generated.
///
/// ```dart
/// class MmAppBarConfiguration with _$MmAppBarConfigurationMixin {}
/// ```
mixin _$MmAppBarConfigurationMixin {
  MmAppBarConfiguration get self => this as MmAppBarConfiguration;

  MmAppBarConfiguration copyWith({
    void Function()? onBack,
    bool onBackProvided = true,
    String? title,
    Widget? trailing,
  }) {
    return MmAppBarConfiguration(
      onBack: onBackProvided ? (onBack ?? self.onBack) : null,
      title: title ?? self.title,
      trailing: trailing ?? self.trailing,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is MmAppBarConfiguration &&
        other.runtimeType == runtimeType &&
        other.onBack == self.onBack &&
        other.title == self.title &&
        other.trailing == self.trailing;
  }

  @override
  int get hashCode {
    return Object.hash(self.onBack, self.title, self.trailing);
  }

  @override
  String toString() =>
      'MmAppBarConfiguration(\n'
      '  onBack: ${self.onBack},\n'
      '  title: ${self.title},\n'
      '  trailing: ${self.trailing},\n'
      ');';
}
