import 'package:injectable/injectable.dart';
import 'package:myoro_matchup/myoro_matchup.dart';

/// Module for registering AppRouter with dependency injection.
@module
abstract class AppRouterModule {
  /// Provides AppRouter instance.
  @preResolve
  @singleton
  Future<AppRouter> appRouter(UserService userService) async {
    final appRouter = AppRouter(userService);
    await appRouter.init();
    return appRouter;
  }
}
