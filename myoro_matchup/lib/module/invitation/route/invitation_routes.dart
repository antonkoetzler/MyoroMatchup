import 'package:myoro_matchup/myoro_matchup.dart';

/// [Route]s of the invitations module.
final class InvitationRoutes extends RouteRepository {
  /// Default constructor.
  InvitationRoutes(String rootLocation)
    : _invitationListingScreen = InvitationListingScreenRoute(rootLocation),
      super(rootLocation: rootLocation);

  /// [InvitationListingScreen].
  final InvitationListingScreenRoute _invitationListingScreen;

  /// [_invitationListingScreen] getter.
  InvitationListingScreenRoute get invitationListingScreen {
    return _invitationListingScreen;
  }
}
