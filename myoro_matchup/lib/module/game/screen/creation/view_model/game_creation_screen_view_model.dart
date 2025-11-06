import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:myoro_matchup/myoro_matchup.dart';

part 'game_creation_screen_state.dart';

/// View model of [GameCreationScreen].
@injectable
final class GameCreationScreenViewModel {
  /// State.
  final _state = GameCreationScreenState();

  /// Dispose function.
  void dispose() {
    _state.dispose();
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

  /// On day changed.
  void onDayChanged(MmDayEnum day) {
    _state.day = day;
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

  /// On previous.
  void onPrevious() {
    _state.selectedIndex = state.selectedIndex - 1;
  }

  /// On next.
  void onNext(int index) {
    _state.selectedIndex = index + 1;
  }

  /// On finish.
  void onFinish() {
    // TODO
    throw UnimplementedError();
  }

  /// Item builder of the frequency field.
  MyoroMenuItem frequencyDayTimeScreenFrequencyFieldItemBuilder(FrequencyEnum frequency) {
    return MyoroMenuIconTextButtonItem(textConfiguration: MyoroTextConfiguration(text: frequency.label));
  }

  /// Selected item builder of the frequency field.
  String frequencyDayTimeScreenFrequencyFieldSelectedItemBuilder(FrequencyEnum frequency) {
    return frequency.label;
  }

  /// [_state] getter.
  GameCreationScreenState get state {
    return _state;
  }
}
