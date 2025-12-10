import 'package:myoro_matchup/myoro_matchup.dart';

/// [Route]s of the friends module.
final class FriendRoutes extends RouteRepository {
  /// Default constructor.
  FriendRoutes(String rootLocation)
    : _friendListingScreen = FriendListingScreenRoute(rootLocation),
      super(rootLocation: rootLocation);

  /// [FriendListingScreen].
  final FriendListingScreenRoute _friendListingScreen;

  /// [_friendListingScreen] getter.
  FriendListingScreenRoute get friendListingScreen {
    return _friendListingScreen;
  }
}
