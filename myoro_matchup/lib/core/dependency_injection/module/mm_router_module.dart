import 'package:injectable/injectable.dart';
import 'package:myoro_matchup/myoro_matchup.dart';

/// Module for registering MmRouter with dependency injection.
@module
abstract class MmRouterModule {
  /// Provides MmRouter instance.
  @preResolve
  @singleton
  Future<MmRouter> appRouter(UserService userService) async {
    final appRouter = MmRouter(userService);
    await appRouter.init();
    return appRouter;
  }
}
