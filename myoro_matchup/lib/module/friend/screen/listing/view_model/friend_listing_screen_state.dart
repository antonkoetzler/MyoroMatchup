part of 'friend_listing_screen_view_model.dart';

/// State of [FriendListingScreenViewModel].
final class FriendListingScreenState {
  /// Default constructor.
  FriendListingScreenState(MyoroRequestControllerRequest<List<FriendRequestResponseDto>> friendsRequestCallback)
    : _friendsRequestController = MyoroRequestController(friendsRequestCallback);

  /// Friends request controller.
  final MyoroRequestController<List<FriendRequestResponseDto>> _friendsRequestController;

  /// Query controller.
  final _queryController = TextEditingController();

  /// Filtered status controller.
  final _filteredStatusController = ValueNotifier<FriendRequestStatusEnum?>(FriendRequestStatusEnum.pending);

  /// Dispose function.
  void dispose() {
    _friendsRequestController.dispose();
    _queryController.dispose();
    _filteredStatusController.dispose();
  }

  /// [_friendsRequestController] getter.
  MyoroRequestController<List<FriendRequestResponseDto>> get friendsRequestController {
    return _friendsRequestController;
  }

  /// [_friendsRequestController] getter.
  MyoroRequest<List<FriendRequestResponseDto>> get friendsRequest {
    return _friendsRequestController.value;
  }

  /// [_queryController] getter.
  TextEditingController get queryController {
    return _queryController;
  }

  /// [_queryController] getter.
  String get query {
    return _queryController.text;
  }

  /// [_filteredStatusController] getter.
  ValueNotifier<FriendRequestStatusEnum?> get filteredStatusController {
    return _filteredStatusController;
  }

  /// [_filteredStatusController] getter.
  FriendRequestStatusEnum? get filteredStatus {
    return _filteredStatusController.value;
  }

  /// [_filteredStatusController] setter.
  set filteredStatus(FriendRequestStatusEnum? filteredStatus) {
    _filteredStatusController.value = filteredStatus;
  }
}
