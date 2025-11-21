import 'package:injectable/injectable.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:myoro_matchup/myoro_matchup.dart';

part 'invitation_listing_screen_state.dart';

/// View model of [InvitationListingScreen].
@injectable
final class InvitationListingScreenViewModel {
  /// Default constructor.
  InvitationListingScreenViewModel(InvitationRepository invitationRepository)
    : _state = InvitationListingScreenState(() async => await invitationRepository.select());

  /// State.
  final InvitationListingScreenState _state;

  /// [_state] getter.
  InvitationListingScreenState get state {
    return _state;
  }
}
