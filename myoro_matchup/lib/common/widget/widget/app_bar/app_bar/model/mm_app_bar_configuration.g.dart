// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mm_app_bar_configuration.dart';

// **************************************************************************
// MyoroModelGenerator
// **************************************************************************

// coverage:ignore-file

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
    Widget? leading,
    bool leadingProvided = true,
    Widget? trailing,
  }) {
    return MmAppBarConfiguration(
      onBack: onBackProvided ? (onBack ?? self.onBack) : null,
      title: title ?? self.title,
      leading: leadingProvided ? (leading ?? self.leading) : null,
      trailing: trailing ?? self.trailing,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is MmAppBarConfiguration &&
        other.runtimeType == runtimeType &&
        other.onBack == self.onBack &&
        other.title == self.title &&
        other.leading == self.leading &&
        other.trailing == self.trailing;
  }

  @override
  int get hashCode {
    return Object.hash(self.onBack, self.title, self.leading, self.trailing);
  }

  @override
  String toString() =>
      'MmAppBarConfiguration(\n'
      '  onBack: ${self.onBack},\n'
      '  title: ${self.title},\n'
      '  leading: ${self.leading},\n'
      '  trailing: ${self.trailing},\n'
      ');';
}
