import 'package:myoro_matchup/myoro_matchup.dart';

/// [Route] of [UserDetailsScreen].
final class UserDetailsScreenRoute extends NoPayloadRoute {
  UserDetailsScreenRoute(String parentDirectory)
    : super(parentDirectory: parentDirectory, name: 'details', child: const UserDetailsScreen());
}
