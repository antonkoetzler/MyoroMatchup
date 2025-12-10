import 'package:myoro_matchup/myoro_matchup.dart';

/// [Route] of modules for home.
final class HomeRoutes extends RouteRepository {
  /// Default constructor.
  HomeRoutes() : _homeScreen = HomeScreenRoute();

  /// [HomeScreen].
  final HomeScreenRoute _homeScreen;

  /// [_homeScreen] getter.
  HomeScreenRoute get homeScreen {
    return _homeScreen;
  }
}
