part of 'home_screen_view_model.dart';

/// State of [HomeScreenViewModel].
final class HomeScreenState {
  /// Default constructor.
  HomeScreenState(
    MyoroRequestControllerRequest<UserResponseDto> userRequestCallback,
    MyoroRequestControllerRequest<Set<GameResponseDto>> gamesRequestCallback,
  ) : _userRequestController = MyoroRequestController(requestCallback: userRequestCallback),
      _gamesRequestController = MyoroRequestController(requestCallback: gamesRequestCallback);

  /// User request controller.
  final MyoroRequestController<UserResponseDto> _userRequestController;

  /// Games request controller.
  final MyoroRequestController<Set<GameResponseDto>> _gamesRequestController;

  /// [ValueNotifier] of the selected sport of the stats being displayed.
  final _selectedSportController = ValueNotifier(SportsEnum.values.first);

  /// Dispose function.
  void dispose() {
    _userRequestController.dispose();
    _gamesRequestController.dispose();
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

  /// [_gamesRequestController] getter.
  MyoroRequestController<Set<GameResponseDto>> get gamesRequestController {
    return _gamesRequestController;
  }

  /// Getter of [_gamesRequestController]'s value.
  MyoroRequest<Set<GameResponseDto>> get gamesRequest {
    return _gamesRequestController.value;
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

  /// Setter of [_gamesRequestController]'s value.
  set gamesRequest(MyoroRequest<Set<GameResponseDto>> gamesRequest) {
    _gamesRequestController.value = gamesRequest;
  }

  /// Setter of [_selectedSportController]'s value.
  set selectedSport(SportsEnum selectedSport) {
    _selectedSportController.value = selectedSport;
  }
}
