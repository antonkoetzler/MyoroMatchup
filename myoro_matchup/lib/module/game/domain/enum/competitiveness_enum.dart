import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Enum encapsulating the values of the level of competitive of a [Game].
enum CompetitivenessEnum {
  /// Casual/recreational.
  casual,

  /// Competitive.
  competitive,

  /// Serious(ly competitive).
  serious;

  /// Formatted name.
  String get formattedName => name.capitalized;

  bool get isCasual => this == casual;
  bool get isCompetitive => this == competitive;
  bool get isSerious => this == serious;
}
