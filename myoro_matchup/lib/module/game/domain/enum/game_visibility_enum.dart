import 'package:faker/faker.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:myoro_matchup/myoro_matchup.dart';

/// Enum encapsulating all visibility options of an item.
@JsonEnum()
enum GameVisibilityEnum {
  /// Private; link-only.
  @JsonValue('PUBLIC')
  private,

  /// Public; everyone can see.
  @JsonValue('PUBLIC')
  public;

  factory GameVisibilityEnum.fake() {
    return values[faker.randomGenerator.integer(values.length)];
  }

  /// Label of the value.
  String get label {
    return switch (this) {
      private => localization.visibilityEnumPrivateLabel,
      public => localization.visibilityEnumPublicLabel,
    };
  }

  bool get isPrivate => this == private;
  bool get isPublic => this == public;
}
