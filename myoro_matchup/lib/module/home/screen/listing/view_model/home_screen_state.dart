part of 'home_screen_view_model.dart';

/// State of [HomeScreenViewModel].
final class HomeScreenState {
  /// Default constructor.
  HomeScreenState(MyoroRequestControllerRequest<UserResponseDto> userRequestCallback)
    : _userRequestController = MyoroRequestController(userRequestCallback);

  /// User request controller.
  final MyoroRequestController<UserResponseDto> _userRequestController;

  /// [ValueNotifier] of the selected sport of the stats being displayed.
  final _selectedSportController = ValueNotifier(SportsEnum.values.first);

  /// Dispose function.
  void dispose() {
    _userRequestController.dispose();
    _selectedSportController.dispose();
  }

  /// [_userRequestController] getter.
  MyoroRequestController<UserResponseDto> get userRequestController {
    return _userRequestController;
  }

  /// Getter of [_userRequestController]'s value.
  MyoroRequest<UserResponseDto> get userRequest {
    return _userRequestController.value;
  }

  /// [_selectedSportController] getter.
  ValueNotifier<SportsEnum> get selectedSportController {
    return _selectedSportController;
  }

  /// Getter of [_selectedSportController]'s value.
  SportsEnum get selectedSport {
    return _selectedSportController.value;
  }

  /// [_userRequestController] setter.
  set userRequest(MyoroRequest<UserResponseDto> userRequest) {
    _userRequestController.value = userRequest;
  }

  /// Setter of [_selectedSportController]'s value.
  set selectedSport(SportsEnum selectedSport) {
    _selectedSportController.value = selectedSport;
  }
}
