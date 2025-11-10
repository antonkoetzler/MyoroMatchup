import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:myoro_matchup/myoro_matchup.dart';

part 'game_creation_screen_state.dart';

/// View model of [GameCreationScreen].
@injectable
final class GameCreationScreenViewModel {
  /// Default constructor.
  GameCreationScreenViewModel(this._gameRepository);

  /// [GameRepository] to get the games.
  final GameRepository _gameRepository;

  /// State.
  final _state = GameCreationScreenState();

  /// Dispose function.
  void dispose() {
    _state.dispose();
  }

  /// Name input validation.
  String? nameValidation(_) {
    final name = _state.name;
    return name.isEmpty ? localization.gameCreationScreenNameScreenNameInputEmptyMessage : null;
  }

  /// On name changed.
  void onNameChanged(String name) {
    _state.name = name;
  }

  /// On sport changed.
  void onSportChanged(SportsEnum sport) {
    _state.sport = sport;
  }

  /// On frequency changed.
  void onFrequencyChanged(FrequencyEnum frequency) {
    _state.frequency = frequency;
  }

  /// On start time validation.
  String? startTimeValidation(_) {
    final startTime = _state.startTime;
    return startTime == null
        ? localization.gameCreationScreenFrequencyDayTimeScreenTimeFieldStartTimeEmptyMessage
        : null;
  }

  /// On start time changed.
  void onStartTimeChanged(TimeOfDay? startTime) {
    _state.startTime = startTime;
  }

  /// On end time validation.
  String? endTimeValidation(_) {
    final endTime = _state.endTime;
    return endTime == null ? localization.gameCreationScreenFrequencyDayTimeScreenTimeFieldEndTimeEmptyMessage : null;
  }

  /// On end time changed.
  void onEndTimeChanged(TimeOfDay? endTime) {
    _state.endTime = endTime;
  }

  /// On location validation.
  String? locationValidation(_) {
    final gameCreationScreenLocationScreenLocationValidationMessage =
        localization.gameCreationScreenLocationScreenLocationValidationMessage;
    return _state.location != null ? null : gameCreationScreenLocationScreenLocationValidationMessage;
  }

  /// On location changed.
  void onLocationChanged(Location? location) {
    _state.location = location;
  }

  /// On member price changed.
  void onMemberPriceChanged(double price) {
    _state.memberPrice = price;
  }

  /// On drop in price changed.
  void onDropInPriceChanged(double price) {
    _state.dropInPrice = price;
  }

  /// On age range changed.
  void onAgeRangeChanged(RangeValues values) {
    _state.ageRange = values;
  }

  /// On visibility changed.
  void onVisibilityChanged(VisibilityEnum visibility) {
    _state.visibility = visibility;
  }

  /// On profile picture image changed.
  void onProfilePictureImageChanged(String image) {
    _state.profilePictureImage = image;
  }

  /// On banner image changed.
  void onBannerImageChanged(String image) {
    _state.bannerImage = image;
  }

  /// On previous.
  void onPrevious() {
    _state.selectedIndex = state.selectedIndex - 1;
  }

  /// On next.
  void onNext() {
    final index = state.selectedIndex;
    final selectedScreen = GameCreationScreen.screens[index];
    final selectedScreenFormKey = selectedScreen.formKey;

    final selectedScreenFormKeyResults = selectedScreenFormKey.currentState!.validate();
    if (!selectedScreenFormKeyResults) {
      return;
    }

    _state.selectedIndex = index + 1;
    GameCreationScreen.screens[_state.selectedIndex].onInit?.call(this);
  }

  /// On finish.
  void onFinish() async {
    try {
      final name = _state.name;
      final sport = _state.sport;
      final day = _state.day;
      final biWeeklyDay = _state.biWeeklyDay;
      final frequency = _state.frequency;
      final startTime = _state.startTime;
      final endTime = _state.endTime;
      final times = GameFrequencyDayTimeTimeDto(startTime: startTime!, endTime: endTime!);
      final frequencyDayTime = GameFrequencyDayTimeDto(
        frequency: _state.frequency,
        days: [day, if (frequency.isBiWeekly) biWeeklyDay],
        times: times,
      );
      final location = _state.location;
      final price = GamePriceDto(memberPrice: _state.memberPrice, dropInPrice: _state.dropInPrice);
      final ageRange = _state.ageRange;
      final ageRangeModel = GameAgeRangeModel(minAge: ageRange.start.toInt(), maxAge: ageRange.end.toInt());
      final visibility = _state.visibility;
      final profilePictureImage = _state.profilePictureImage;
      final bannerImage = _state.bannerImage;

      await _gameRepository.create(
        GameCreationRequestDto(
          name: name,
          sport: sport,
          frequencyDayTime: frequencyDayTime,
          location: location!,
          price: price,
          ageRange: ageRangeModel,
          visibility: visibility,
          profilePicture: profilePictureImage,
          banner: bannerImage,
        ),
      );
    } catch (_) {
      // TODO: Gotta handle this.
    }
  }

  /// Item builder of the frequency field.
  MyoroMenuItem frequencyDayTimeScreenFrequencyFieldItemBuilder(FrequencyEnum frequency) {
    return MyoroMenuIconTextButtonItem(textConfiguration: MyoroTextConfiguration(text: frequency.label));
  }

  /// Selected item builder of the frequency field.
  String frequencyDayTimeScreenFrequencyFieldSelectedItemBuilder(FrequencyEnum frequency) {
    return frequency.label;
  }

  /// Selected screen form key.
  GlobalKey<FormState> get selectedScreenFormKey {
    return GameCreationScreen.screens[state.selectedIndex].formKey;
  }

  /// [_state] getter.
  GameCreationScreenState get state {
    return _state;
  }
}
