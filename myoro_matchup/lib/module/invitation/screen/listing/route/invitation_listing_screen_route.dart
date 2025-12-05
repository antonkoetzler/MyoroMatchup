import 'package:myoro_matchup/myoro_matchup.dart';

/// [Route] of [InvitationListingScreen].
final class InvitationListingScreenRoute extends NoPayloadRoute {
  /// Default constructor.
  InvitationListingScreenRoute()
    : super(name: Routes.invitationRoutes.parentDirectory, child: const InvitationListingScreen());
}
