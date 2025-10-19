import 'package:myoro_matchup/myoro_matchup.dart';

/// Enum for keys that may be used in [SharedPreferencesService].
enum SharedPreferencesEnum {
  /// [User.id] of the logged in user.
  loginToken('token');

  /// Default constructor.
  const SharedPreferencesEnum(this.key);

  /// Key.
  final String key;
}
