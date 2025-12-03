import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:myoro_matchup/myoro_matchup.dart';

part 'invitation_listing_screen_state.dart';

/// View model of [InvitationListingScreen].
@injectable
final class InvitationListingScreenViewModel {
  /// Default constructor.
  InvitationListingScreenViewModel(this._invitationRepository) {
    _state = InvitationListingScreenState(() async => await _invitationRepository.select(searchQuery: _state.query, status: _state.filteredStatus));
    _state
      ..queryController.addListener(_queryControllerListener)
      ..declineInvitationRequestController.addListener(_declineInvitationRequestListener)
      ..acceptInvitationRequestController.addListener(_acceptInvitationRequestListener);
  }

  /// Invitation repository.
  final InvitationRepository _invitationRepository;

  /// State.
  late final InvitationListingScreenState _state;

  /// Dispose function.
  void dispose() {
    _state.dispose();
  }

  /// [MyoroRadioFilterButton.itemLabelBuilder] of the status filter.
  String statusFilterItemLabelBuilder(InvitationStatusEnum status) {
    return status.label;
  }

  /// Status filter on changed.
  void statusFilterOnChanged(InvitationStatusEnum? value) {
    _state.filteredStatus = value;
  }

  /// On decline.
  void onDecline(InvitationResponseDto invitation) {
    _state
      ..declineInvitationRequestController.setRequestCallback((() async => await _invitationRepository.declineInvitation(invitation.id)))
      ..declineInvitationRequestController.fetch();
  }

  /// On accept.
  void onAccept(InvitationResponseDto invitation) {
    _state
      ..acceptInvitationRequestController.setRequestCallback((() async => await _invitationRepository.acceptInvitation(invitation.id)))
      ..acceptInvitationRequestController.fetch();
  }

  /// Query controller listener.
  void _queryControllerListener() {
    _state.invitationsRequestController.fetch();
  }

  /// Decline invitation request listener.
  void _declineInvitationRequestListener() {
    final declineInvitationRequest = _state.declineInvitationRequest;
    final status = declineInvitationRequest.status;
    final isSuccess = status.isSuccess;
    final isError = status.isError;
    if (isSuccess) {
      _state.invitationsRequestController.fetch();
      MmSnackBarHelper.showSnackBar(
        snackBar: MyoroSnackBar(snackBarType: MyoroSnackBarTypeEnum.error, message: declineInvitationRequest.data!),
      );
    }
    if (isError) {
      MmSnackBarHelper.showSnackBar(
        snackBar: MyoroSnackBar(snackBarType: MyoroSnackBarTypeEnum.error, message: declineInvitationRequest.errorMessage!),
      );
    }
  }

  /// Accept invitation request listener.
  void _acceptInvitationRequestListener() {
    if (_state.acceptInvitationRequest.status.isSuccess) {
      _state.invitationsRequestController.fetch();
    }
  }

  /// [_state] getter.
  InvitationListingScreenState get state {
    return _state;
  }

  /// On filters cleared.
  VoidCallback? get onFiltersCleared {
    return _state.query.isNotEmpty || _state.filteredStatus != null
        ? () {
            _state.queryController.clear();
            _state.filteredStatus = null;
          }
        : null;
  }
}
