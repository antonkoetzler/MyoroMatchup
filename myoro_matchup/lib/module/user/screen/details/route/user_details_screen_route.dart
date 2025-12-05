import 'package:myoro_matchup/myoro_matchup.dart';

/// [Route] of [UserDetailsScreen].
final class UserDetailsScreenRoute extends NoPayloadRoute {
  UserDetailsScreenRoute()
    : super(name: '${Routes.userRoutes.parentDirectory}/details', child: const UserDetailsScreen());
}
