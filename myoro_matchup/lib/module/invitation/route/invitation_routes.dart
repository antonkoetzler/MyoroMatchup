import 'package:myoro_matchup/myoro_matchup.dart';

/// [Route]s of the invitations module.
final class InvitationRoutes implements RouteRepository {
  /// [InvitationListingScreen].
  late final invitationListingScreen = InvitationListingScreenRoute();

  /// Parent directory.
  @override
  String get parentDirectory {
    return 'invitation';
  }
}
