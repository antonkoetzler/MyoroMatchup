import 'package:faker/faker.dart';
import 'package:myoro_matchup/myoro_matchup.dart';

/// Enum encapsulating all visibility options of an item.
enum VisibilityEnum {
  /// Private; link-only.
  private,

  /// Public; everyone can see.
  public;

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

  bool get isPrivate => this == private;
  bool get isPublic => this == public;
}
