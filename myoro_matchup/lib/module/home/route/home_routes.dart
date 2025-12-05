import 'package:myoro_matchup/myoro_matchup.dart';

/// [Route] of modules for home.
final class HomeRoutes implements RouteRepository {
  /// [HomeScreen].
  late final homeScreen = HomeScreenRoute();

  /// Parent directory.
  @override
  String get parentDirectory {
    return 'home';
  }
}
