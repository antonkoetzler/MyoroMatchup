part of 'invitation_listing_screen_view_model.dart';

/// State of [InvitationListingScreenViewModel].
final class InvitationListingScreenState {
  /// Default constructor.
  InvitationListingScreenState(MyoroRequestControllerRequest<List<InvitationResponseDto>> invitationsRequestCallback)
    : _invitationsRequestController = MyoroRequestController(invitationsRequestCallback);

  /// Invitations request controller.
  final MyoroRequestController<List<InvitationResponseDto>> _invitationsRequestController;

  /// Filtered status controller.
  final _filteredStatusController = ValueNotifier<InvitationStatusEnum?>(InvitationStatusEnum.pending);

  /// Query controller.
  final _queryController = TextEditingController();

  /// Decline invitation request controller.
  final _declineInvitationRequestController = MyoroRequestController<String>(null);

  /// Accept invitation request controller.
  final _acceptInvitationRequestController = MyoroRequestController<String>(null);

  /// Dispose function.
  void dispose() {
    _invitationsRequestController.dispose();
    _filteredStatusController.dispose();
    _queryController.dispose();
    _declineInvitationRequestController.dispose();
    _acceptInvitationRequestController.dispose();
  }

  /// [_invitationsRequestController] getter.
  MyoroRequestController<List<InvitationResponseDto>> get invitationsRequestController {
    return _invitationsRequestController;
  }

  /// [_invitationsRequestController] getter.
  MyoroRequest<List<InvitationResponseDto>> get invitationsRequest {
    return _invitationsRequestController.value;
  }

  /// [_filteredStatusController] getter.
  ValueNotifier<InvitationStatusEnum?> get filteredStatusController {
    return _filteredStatusController;
  }

  /// [_filteredStatusController] getter.
  InvitationStatusEnum? get filteredStatus {
    return _filteredStatusController.value;
  }

  /// [_queryController] getter.
  TextEditingController get queryController {
    return _queryController;
  }

  /// [_queryController] getter.
  String get query {
    return _queryController.text;
  }

  /// [_declineInvitationRequestController] getter.
  MyoroRequestController<String> get declineInvitationRequestController {
    return _declineInvitationRequestController;
  }

  /// [_declineInvitationRequestController] getter.
  MyoroRequest<String> get declineInvitationRequest {
    return _declineInvitationRequestController.value;
  }

  /// [_acceptInvitationRequestController] getter.
  MyoroRequestController<String> get acceptInvitationRequestController {
    return _acceptInvitationRequestController;
  }

  /// [_acceptInvitationRequestController] getter.
  MyoroRequest<String> get acceptInvitationRequest {
    return _acceptInvitationRequestController.value;
  }

  /// [_filteredStatusController] setter.
  set filteredStatus(InvitationStatusEnum? filteredStatus) {
    _filteredStatusController.value = filteredStatus;
  }
}
