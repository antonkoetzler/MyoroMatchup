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
  final _frequencyController = ValueNotifier(FrequencyEnum.weekly);

  /// Time field.
  TimeOfDay? startTime;

  /// End time field.
  TimeOfDay? endTime;

  /// Day field.
  final _dayController = ValueNotifier(MyoroDayEnum.monday);

  /// Bi weekly day field.
  final _biWeeklyDayController = ValueNotifier(MyoroDayEnum.monday);

  /// Location field.
  final _locationController = ValueNotifier<Location?>(null);

  /// Location field [FocusNode].
  final _locationFocusNode = FocusNode();

  /// Member price field.
  double memberPrice = 0;

  /// Member price field [FocusNode].
  final _memberPriceFocusNode = FocusNode();

  /// Drop in price field.
  double dropInPrice = 0;

  /// Drop in price field [FocusNode].
  final _dropInPriceFocusNode = FocusNode();

  /// Age range field.
  final _ageRangeController = ValueNotifier(const RangeValues(0, 100));

  /// Visibility field.
  var visibility = VisibilityEnum.public;

  /// Profile picture image field.
  String profilePictureImage = kMyoroEmptyString;

  /// Banner image field.
  String bannerImage = kMyoroEmptyString;

  /// Dispose function.
  void dispose() {
    _selectedIndexController.dispose();
    _sportController.dispose();
    _frequencyController.dispose();
    _dayController.dispose();
    _locationController.dispose();
    _locationFocusNode.dispose();
    _memberPriceFocusNode.dispose();
    _dropInPriceFocusNode.dispose();
    _ageRangeController.dispose();
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

  /// [_frequencyController] getter.
  ValueNotifier<FrequencyEnum> get frequencyController {
    return _frequencyController;
  }

  /// Getter of [_frequencyController]'s value.
  FrequencyEnum get frequency {
    return _frequencyController.value;
  }

  /// [_dayController] getter.
  ValueNotifier<MyoroDayEnum> get dayController {
    return _dayController;
  }

  /// Getter of [_dayController]'s value.
  MyoroDayEnum get day {
    return _dayController.value;
  }

  /// [_biWeeklyDayController] getter.
  ValueNotifier<MyoroDayEnum> get biWeeklyDayController {
    return _biWeeklyDayController;
  }

  /// Getter of [_biWeeklyDayController]'s value.
  MyoroDayEnum get biWeeklyDay {
    return _biWeeklyDayController.value;
  }

  /// [_locationController] getter.
  ValueNotifier<Location?> get locationController {
    return _locationController;
  }

  /// Getter of [_locationController]'s value.
  Location? get location {
    return _locationController.value;
  }

  /// [_locationFocusNode] getter.
  FocusNode get locationFocusNode {
    return _locationFocusNode;
  }

  /// [_memberPriceFocusNode] getter.
  FocusNode get memberPriceFocusNode {
    return _memberPriceFocusNode;
  }

  /// [_dropInPriceFocusNode] getter.
  FocusNode get dropInPriceFocusNode {
    return _dropInPriceFocusNode;
  }

  /// [_ageRangeController] getter.
  ValueNotifier<RangeValues> get ageRangeController {
    return _ageRangeController;
  }

  /// Getter of [_ageRangeController]'s value.
  RangeValues get ageRange {
    return _ageRangeController.value;
  }

  /// Setter of [_selectedIndexController]'s value.
  set selectedIndex(int value) {
    _selectedIndexController.value = value;
  }

  /// Setter of [_sportController]'s value.
  set sport(SportsEnum value) {
    _sportController.value = value;
  }

  /// Setter of [_frequencyController]'s value.
  set frequency(FrequencyEnum value) {
    _frequencyController.value = value;
  }

  /// Setter of [_dayController]'s value.
  set day(MyoroDayEnum value) {
    _dayController.value = value;
  }

  /// Setter of [_biWeeklyDayController]'s value.
  set biWeeklyDay(MyoroDayEnum value) {
    _biWeeklyDayController.value = value;
  }

  /// Setter of [_locationController]'s value.
  set location(Location? value) {
    _locationController.value = value;
  }

  /// Setter of [_ageRangeController]'s value.
  set ageRange(RangeValues value) {
    _ageRangeController.value = value;
  }
}
