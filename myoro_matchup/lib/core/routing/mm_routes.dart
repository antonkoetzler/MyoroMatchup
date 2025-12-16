import 'package:myoro_matchup/myoro_matchup.dart';

/// Class to encapsulate every route available.
///
/// Every static field of [Routes] is a module.
final class MmRoutes {
  /// [FriendRoutes].
  static final friendRoutes = FriendRoutes('friend');

  /// [GameRoutes].
  static final gameRoutes = GameRoutes('game');

  /// [HomeRoutes].
  static final homeRoutes = HomeRoutes();

  /// [InvitationRoutes].
  static final invitationRoutes = InvitationRoutes('invitation');

  /// [LoginSignupRoutes].
  static final loginSignupRoutes = LoginSignupRoutes('login_signup');

  /// [SubscriptionRoutes].
  static final subscriptionRoutes = SubscriptionRoutes('subscription');

  /// [UserRoutes].
  static final userRoutes = UserRoutes('user');
}
