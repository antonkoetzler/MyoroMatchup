import 'package:myoro_matchup/myoro_matchup.dart';

/// [Route]s of the user module.
final class UserRoutes implements RouteRepository {
  /// [UserDetailsScreen].
  late final userDetailsScreen = UserDetailsScreenRoute();

  /// Parent directory.
  @override
  String get parentDirectory {
    return 'user';
  }
}
