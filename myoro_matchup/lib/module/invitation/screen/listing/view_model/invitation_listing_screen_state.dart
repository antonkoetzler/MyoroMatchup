part of 'invitation_listing_screen_view_model.dart';

/// State of [InvitationListingScreenViewModel].
final class InvitationListingScreenState {
  /// Default constructor.
  InvitationListingScreenState(MyoroRequestControllerRequest<List<InvitationResponseDto>> invitationsRequestCallback)
    : _invitationsRequestController = MyoroRequestController(requestCallback: invitationsRequestCallback);

  /// Invitations request controller.
  final MyoroRequestController<List<InvitationResponseDto>> _invitationsRequestController;

  /// Dispose function.
  void dispose() {
    _invitationsRequestController.dispose();
  }

  /// [_invitationsRequestController] getter.
  MyoroRequestController<List<InvitationResponseDto>> get invitationsRequestController {
    return _invitationsRequestController;
  }

  /// [_invitationsRequestController] getter.
  MyoroRequest<List<InvitationResponseDto>> get invitationsRequest {
    return _invitationsRequestController.value;
  }
}
