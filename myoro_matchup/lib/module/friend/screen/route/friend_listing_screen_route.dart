import 'package:myoro_matchup/myoro_matchup.dart';

/// [Route] of [FriendListingScreen].
final class FriendListingScreenRoute extends NoPayloadRoute {
  FriendListingScreenRoute() : super(name: AppRouter.friendModuleRoute, child: const FriendListingScreen());
}
