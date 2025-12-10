import 'package:myoro_matchup/myoro_matchup.dart';

/// [Route]s of the user module.
final class UserRoutes extends RouteRepository {
  /// Default constructor.
  UserRoutes(String rootLocation)
    : _userDetailsScreen = UserDetailsScreenRoute(rootLocation),
      super(rootLocation: rootLocation);

  /// [UserDetailsScreen].
  final UserDetailsScreenRoute _userDetailsScreen;

  /// [_userDetailsScreen] getter.
  UserDetailsScreenRoute get userDetailsScreen {
    return _userDetailsScreen;
  }
}
