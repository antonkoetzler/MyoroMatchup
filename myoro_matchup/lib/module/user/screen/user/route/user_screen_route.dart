import 'package:myoro_matchup/myoro_matchup.dart';

/// Route of [UserScreen].
final class UserScreenRoute extends NoPayloadRoute {
  /// Default constructor.
  UserScreenRoute() : super(name: AppRouter.userModuleRoute, child: const UserScreen());
}
