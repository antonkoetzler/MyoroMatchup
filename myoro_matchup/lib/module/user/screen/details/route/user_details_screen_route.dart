import 'package:myoro_matchup/myoro_matchup.dart';

/// [Route] of [UserDetailsScreen].
final class UserDetailsScreenRoute extends NoPayloadRoute {
  UserDetailsScreenRoute() : super(name: '${AppRouter.userModuleRoute}/details', child: const UserDetailsScreen());
}
