import 'package:myoro_matchup/myoro_matchup.dart';

/// [Route]s of the friends module.
final class FriendRoutes implements RouteRepository {
  /// [FriendListingScreen].
  late final friendListingScreen = FriendListingScreenRoute();

  /// Parent directory.
  @override
  String get parentDirectory {
    return 'friend';
  }
}
