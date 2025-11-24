import 'package:myoro_matchup/myoro_matchup.dart';

/// Class to encapsulate every route available.
///
/// Every static field of [Routes] is a module.
final class Routes {
  /// [FriendRoutes].
  static final friendRoutes = FriendRoutes();

  /// [GameRoutes].
  static final gameRoutes = GameRoutes();

  /// [HomeRoutes].
  static final homeRoutes = HomeRoutes();

  /// [InvitationRoutes].
  static final invitationRoutes = InvitationRoutes();

  /// [LoginSignupRoutes].
  static final loginSignupRoutes = LoginSignupRoutes();
}
