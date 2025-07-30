import 'package:myoro_matchup/myoro_matchup.dart';

/// Model that [Route] generates in order to make a navigation (i.e. use [AppRouter.push]).
final class RouteNavigationConfiguration<T extends Object?> {
  const RouteNavigationConfiguration({required this.location, this.payload});

  /// [Route.location]
  final String location;

  /// If the [Route] generating this extends
  /// [PayloadRoute], this is the payload.
  final T? payload;
}
