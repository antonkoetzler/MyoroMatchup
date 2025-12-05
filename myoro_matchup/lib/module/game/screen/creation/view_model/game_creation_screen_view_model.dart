import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:myoro_matchup/myoro_matchup.dart';

part 'game_creation_screen_state.dart';

/// View model of [GameCreationScreen].
@injectable
final class GameCreationScreenViewModel {
  /// Default constructor.
  GameCreationScreenViewModel(this._gameRepository) {
    _state.requestController.addListener(_onRequestControllerListener);
  }

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
    final gameCreationScreenNameScreenNameInputEmptyMessage =
        localization.gameCreationScreenNameScreenNameInputEmptyMessage;
    final gameCreationScreenNameScreenNameInputLengthMessage =
        localization.gameCreationScreenNameScreenNameInputLengthMessage;
    final name = _state.name;
    if (name.isEmpty) return gameCreationScreenNameScreenNameInputEmptyMessage;
    if (name.length < kGameMinNameLength) return gameCreationScreenNameScreenNameInputLengthMessage;
    return null;
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
  void onFrequencyChanged(GameFrequencyEnum frequency) {
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

  /// On bi-weekly start time validation.
  String? biWeeklyStartTimeValidation(_) {
    final frequency = _state.frequency;
    if (!frequency.isBiWeekly) {
      return null;
    }
    final biWeeklyStartTime = _state.biWeeklyStartTime;
    return biWeeklyStartTime == null
        ? localization.gameCreationScreenFrequencyDayTimeScreenTimeFieldStartTimeEmptyMessage
        : null;
  }

  /// On bi-weekly start time changed.
  void onBiWeeklyStartTimeChanged(TimeOfDay? biWeeklyStartTime) {
    _state.biWeeklyStartTime = biWeeklyStartTime;
  }

  /// On bi-weekly end time validation.
  String? biWeeklyEndTimeValidation(_) {
    final frequency = _state.frequency;
    if (!frequency.isBiWeekly) {
      return null;
    }
    final biWeeklyEndTime = _state.biWeeklyEndTime;
    return biWeeklyEndTime == null
        ? localization.gameCreationScreenFrequencyDayTimeScreenTimeFieldEndTimeEmptyMessage
        : null;
  }

  /// On bi-weekly end time changed.
  void onBiWeeklyEndTimeChanged(TimeOfDay? biWeeklyEndTime) {
    _state.biWeeklyEndTime = biWeeklyEndTime;
  }

  /// On location validation.
  String? locationValidation(_) {
    final gameCreationScreenLocationScreenLocationValidationMessage =
        localization.gameCreationScreenLocationScreenLocationValidationMessage;
    return _state.location != null ? null : gameCreationScreenLocationScreenLocationValidationMessage;
  }

  /// On location changed.
  void onLocationChanged(LocationResponseDto? location) {
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
    if (!_triggerValidation()) return;
    _state.selectedIndex = _state.selectedIndex - 1;
    GameCreationScreen.screens[_state.selectedIndex].onInit?.call(this);
  }

  /// On next.
  void onNext() {
    if (!_triggerValidation()) return;
    _state.selectedIndex = _state.selectedIndex + 1;
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
      final biWeeklyStartTime = _state.biWeeklyStartTime;
      final biWeeklyEndTime = _state.biWeeklyEndTime;
      final frequencyDayTime = GameFrequencyDayTimeDto(
        frequency: _state.frequency,
        primaryDay: day,
        biWeeklyDay: frequency.isBiWeekly ? biWeeklyDay : null,
        primaryStartTime: startTime!,
        primaryEndTime: endTime!,
        biWeeklyStartTime: frequency.isBiWeekly ? biWeeklyStartTime : null,
        biWeeklyEndTime: frequency.isBiWeekly ? biWeeklyEndTime : null,
      );
      final location = _state.location;
      final price = GamePriceDto(memberPrice: _state.memberPrice, dropInPrice: _state.dropInPrice);
      final ageRange = _state.ageRange;
      final ageRangeModel = GameAgeRangeModel(minAge: ageRange.start.toInt(), maxAge: ageRange.end.toInt());
      final visibility = _state.visibility;
      final profilePictureImage = _state.profilePictureImage;
      final bannerImage = _state.bannerImage;

      _state.request = _state.request.createLoadingState();

      final id = await _gameRepository.create(
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

      _state.request = _state.request.createSuccessState(id);
    } catch (e, s) {
      await MmLogger.error('[GameCreationScreenViewModel.onFinish]: Failed to create game.', e, s);
      _state.request = _state.request.createErrorState(e.toString());
    }
  }

  /// Gets the height of the footer buttons.
  void setFooterButtonsHeight() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final footerButtonsGlobalKey = _state.footerButtonsGlobalKey;
      final renderBox = footerButtonsGlobalKey.currentContext?.findRenderObject() as RenderBox?;
      final height = renderBox?.size.height;
      _state.footerButtonsHeight = height;
    });
  }

  /// Item builder of the frequency field.
  MyoroMenuIconTextButtonItem frequencyDayTimeScreenFrequencyFieldItemBuilder(_, GameFrequencyEnum frequency) {
    return MyoroMenuIconTextButtonItem(text: frequency.label);
  }

  /// Selected item builder of the frequency field.
  String frequencyDayTimeScreenFrequencyFieldSelectedItemBuilder(GameFrequencyEnum frequency) {
    return frequency.label;
  }

  /// Helper function to trigger the validation.
  bool _triggerValidation() {
    final selectedScreen = GameCreationScreen.screens[state.selectedIndex];
    final selectedScreenFormKey = selectedScreen.formKey;
    final onValidationFailed = selectedScreen.onValidationFailed;
    final result = selectedScreenFormKey.currentState!.validate();
    if (!result) onValidationFailed?.call(this);
    return result;
  }

  /// On request controller listener.
  void _onRequestControllerListener() {
    final request = _state.request;
    final status = request.status;
    final gameCreationScreenGameCreationSuccessMessage = localization.gameCreationScreenGameCreationSuccessMessage;

    switch (status) {
      case MyoroRequestEnum.success:
        MmSnackBarHelper.showSnackBar(
          snackBar: MyoroSnackBar(
            snackBarType: MyoroSnackBarTypeEnum.success,
            message: gameCreationScreenGameCreationSuccessMessage,
          ),
        );
        Future.delayed(kSuccessNavigationDelayDuration).then((_) {
          MmRouter.pop();
          MmRouter.push(Routes.gameRoutes.gameDetailsScreen.navigate(request.data!));
        });
        break;
      case MyoroRequestEnum.error:
        MmSnackBarHelper.showSnackBar(
          snackBar: MyoroSnackBar(snackBarType: MyoroSnackBarTypeEnum.error, message: request.errorMessage!),
        );
        break;
      default:
        break;
    }
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
