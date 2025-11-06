part of 'user_screen_view_model.dart';

/// State of the user screen.
final class UserScreenState {
  /// Default constructor.
  UserScreenState(MyoroRequestControllerRequest<User> requestCallback)
    : _userRequestController = MyoroRequestController(requestCallback: requestCallback);

  /// [User] request.
  final MyoroRequestController<User> _userRequestController;

  /// Dispose function.
  void dispose() {
    _userRequestController.dispose();
  }

  /// [_userRequestController] getter.
  MyoroRequestController<User> get userRequestController {
    return _userRequestController;
  }

  /// [_userRequestController] setter.
  set userRequest(MyoroRequest<User> userRequest) {
    _userRequestController.value = userRequest;
  }
}
