import 'package:faker/faker.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:myoro_matchup/myoro_matchup.dart';

/// Enum encapsulating all visibility options of an item.
@JsonEnum()
enum VisibilityEnum {
  /// Private; link-only.
  @JsonValue('PRIVATE')
  private,

  /// Public; everyone can see.
  @JsonValue('PUBLIC')
  public;

  /// Fake constructor.
  factory VisibilityEnum.fake() {
    return values[faker.randomGenerator.integer(values.length)];
  }

  /// Label of the value.
  String get label {
    return switch (this) {
      private => localization.visibilityEnumPrivateLabel,
      public => localization.visibilityEnumPublicLabel,
    };
  }

  /// Whether the visibility is private.
  bool get isPrivate {
    return this == private;
  }

  /// Whether the visibility is public.
  bool get isPublic {
    return this == public;
  }
}
