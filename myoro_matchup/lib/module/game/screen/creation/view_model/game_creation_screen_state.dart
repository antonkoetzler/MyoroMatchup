part of 'game_creation_screen_view_model.dart';

/// State of [GameCreationScreenViewModel].
final class GameCreationScreenState {
  /// [ValueNotifier] of the selected index.
  final _selectedIndexController = ValueNotifier(0);

  /// Name field.
  String name = kMyoroEmptyString;

  /// Sport field.
  final _sportController = ValueNotifier(SportsEnum.football);

  /// Frequency field.
  FrequencyEnum frequency = FrequencyEnum.weekly;

  /// Day field.
  final _dayController = ValueNotifier(MmDayEnum.monday);

  /// Dispose function.
  void dispose() {
    _selectedIndexController.dispose();
    _sportController.dispose();
    _dayController.dispose();
  }

  /// [_selectedIndexController] getter.
  ValueNotifier<int> get selectedIndexController {
    return _selectedIndexController;
  }

  /// Getter of [_selectedIndexController]'s value.
  int get selectedIndex {
    return _selectedIndexController.value;
  }

  /// [_sportController] getter.
  ValueNotifier<SportsEnum> get sportController {
    return _sportController;
  }

  /// Getter of [_sportController]'s value.
  SportsEnum get sport {
    return _sportController.value;
  }

  /// [_dayController] getter.
  ValueNotifier<MmDayEnum> get dayController {
    return _dayController;
  }

  /// Getter of [_dayController]'s value.
  MmDayEnum get day {
    return _dayController.value;
  }

  /// Setter of [_selectedIndexController]'s value.
  set selectedIndex(int value) {
    _selectedIndexController.value = value;
  }

  /// Setter of [_sportController]'s value.
  set sport(SportsEnum value) {
    _sportController.value = value;
  }

  /// Setter of [_dayController]'s value.
  set day(MmDayEnum value) {
    _dayController.value = value;
  }
}
