import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:myoro_matchup/myoro_matchup.dart';

part 'home_screen_state.dart';

/// View model of [HomeScreen].
@injectable
final class HomeScreenViewModel {
  /// Default constructor.
  HomeScreenViewModel(
    SharedPreferencesService sharedPreferencesService,
    UserRepository userRepository,
    GameRepository gameRepository,
  ) : _state = HomeScreenState(
        () async => userRepository.get(sharedPreferencesService.loggedInUser!.id, showStats: true),
        () async => await gameRepository.select(),
      ) {
    fetchUser();
    fetchGames();
  }

  /// State.
  final HomeScreenState _state;

  /// Dispose function.
  void dispose() {
    _state.dispose();
  }

  /// Fetch the user.
  void fetchUser() {
    _state.userRequestController.fetch();
  }

  /// Fetch the games.
  void fetchGames() {
    _state.gamesRequestController.fetch();
  }

  /// [MyoroSingleSelectionDropdown.itemBuilder] of the sport switcher.
  MyoroMenuItem bodyUserSportStatsSportSwitcherItemBuilder(SportsEnum sport, _) {
    return MyoroMenuIconTextButtonItem(text: bodyUserSportStatsSportSwitcherSelectedItemBuilder(sport));
  }

  /// [MyoroSingleSelectionDropdown.selectedItemBuilder] of the sport switcher.
  String bodyUserSportStatsSportSwitcherSelectedItemBuilder(SportsEnum sport) {
    return sport.formattedName;
  }

  /// [MyoroSingleSelectionDropdown.onChanged] of the sport switcher.
  void bodyUserSportStatsSportSwitcherOnChanged(SportsEnum sport) {
    _state.selectedSport = sport;
  }

  /// Builds the style of the player card.
  MyoroCardStyle buildPlayerCardStyle(BuildContext context) {
    final stats = selectedSportStats;
    final rating = stats.rating;

    final themeExtension = context.resolveThemeExtension<HomeScreenThemeExtension>();
    final bodyUserSportStatsPlayerCardBeginnerCardStyle = themeExtension.bodyUserSportStatsPlayerCardBeginnerCardStyle;
    final bodyUserSportStatsPlayerCardProCardStyle = themeExtension.bodyUserSportStatsPlayerCardProCardStyle;
    final bodyUserSportStatsPlayerCardGoatCardStyle = themeExtension.bodyUserSportStatsPlayerCardGoatCardStyle;

    return switch (rating) {
      < 50 => bodyUserSportStatsPlayerCardBeginnerCardStyle,
      < 75 => bodyUserSportStatsPlayerCardProCardStyle,
      _ => bodyUserSportStatsPlayerCardGoatCardStyle,
    };
  }

  /// [_state] getter.
  HomeScreenState get state {
    return _state;
  }

  /// Getter of the [UserStatsResponseDto] of the selected sport.
  UserStatsResponseDto get selectedSportStats {
    final user = state.userRequest.data!;

    return switch (state.selectedSport) {
      SportsEnum.football => user.stats.football,
      SportsEnum.futsal => user.stats.futsal,
      SportsEnum.fut7 => user.stats.fut7,
      SportsEnum.volleyball => user.stats.volleyball,
    };
  }

  /// Builds the items of the stats to be built.
  List<({String label, int value})> get statsItems {
    final homeScreenBodyUserSportStatsStatsFootballAttackLabel =
        localization.homeScreenBodyUserSportStatsStatsFootballAttackLabel;
    final homeScreenBodyUserSportStatsStatsFootballDefenseLabel =
        localization.homeScreenBodyUserSportStatsStatsFootballDefenseLabel;
    final homeScreenBodyUserSportStatsStatsFootballStrikingLabel =
        localization.homeScreenBodyUserSportStatsStatsFootballStrikingLabel;
    final homeScreenBodyUserSportStatsStatsFootballSkillsLabel =
        localization.homeScreenBodyUserSportStatsStatsFootballSkillsLabel;
    final homeScreenBodyUserSportStatsStatsFut7AttackLabel =
        localization.homeScreenBodyUserSportStatsStatsFut7AttackLabel;
    final homeScreenBodyUserSportStatsStatsFut7DefenseLabel =
        localization.homeScreenBodyUserSportStatsStatsFut7DefenseLabel;
    final homeScreenBodyUserSportStatsStatsFut7StrikingLabel =
        localization.homeScreenBodyUserSportStatsStatsFut7StrikingLabel;
    final homeScreenBodyUserSportStatsStatsFut7SkillsLabel =
        localization.homeScreenBodyUserSportStatsStatsFut7SkillsLabel;
    final homeScreenBodyUserSportStatsStatsFutsalAttackLabel =
        localization.homeScreenBodyUserSportStatsStatsFutsalAttackLabel;
    final homeScreenBodyUserSportStatsStatsFutsalDefenseLabel =
        localization.homeScreenBodyUserSportStatsStatsFutsalDefenseLabel;
    final homeScreenBodyUserSportStatsStatsFutsalStrikingLabel =
        localization.homeScreenBodyUserSportStatsStatsFutsalStrikingLabel;
    final homeScreenBodyUserSportStatsStatsFutsalSkillsLabel =
        localization.homeScreenBodyUserSportStatsStatsFutsalSkillsLabel;
    final homeScreenBodyUserSportStatsStatsVolleyballAttackLabel =
        localization.homeScreenBodyUserSportStatsStatsVolleyballAttackLabel;
    final homeScreenBodyUserSportStatsStatsVolleyballBlockingLabel =
        localization.homeScreenBodyUserSportStatsStatsVolleyballBlockingLabel;
    final homeScreenBodyUserSportStatsStatsVolleyballServingLabel =
        localization.homeScreenBodyUserSportStatsStatsVolleyballServingLabel;
    final homeScreenBodyUserSportStatsStatsVolleyballReceptionLabel =
        localization.homeScreenBodyUserSportStatsStatsVolleyballReceptionLabel;

    final stats = selectedSportStats;

    return switch (stats) {
      UserFootballStatsResponseDto() => [
        (label: homeScreenBodyUserSportStatsStatsFootballAttackLabel, value: stats.attack),
        (label: homeScreenBodyUserSportStatsStatsFootballDefenseLabel, value: stats.defense),
        (label: homeScreenBodyUserSportStatsStatsFootballStrikingLabel, value: stats.striking),
        (label: homeScreenBodyUserSportStatsStatsFootballSkillsLabel, value: stats.skills),
      ],
      UserFut7StatsResponseDto() => [
        (label: homeScreenBodyUserSportStatsStatsFut7AttackLabel, value: stats.attack),
        (label: homeScreenBodyUserSportStatsStatsFut7DefenseLabel, value: stats.defense),
        (label: homeScreenBodyUserSportStatsStatsFut7StrikingLabel, value: stats.striking),
        (label: homeScreenBodyUserSportStatsStatsFut7SkillsLabel, value: stats.skills),
      ],
      UserFutsalStatsResponseDto() => [
        (label: homeScreenBodyUserSportStatsStatsFutsalAttackLabel, value: stats.attack),
        (label: homeScreenBodyUserSportStatsStatsFutsalDefenseLabel, value: stats.defense),
        (label: homeScreenBodyUserSportStatsStatsFutsalStrikingLabel, value: stats.striking),
        (label: homeScreenBodyUserSportStatsStatsFutsalSkillsLabel, value: stats.skills),
      ],
      UserVolleyballStatsResponseDto() => [
        (label: homeScreenBodyUserSportStatsStatsVolleyballAttackLabel, value: stats.attack),
        (label: homeScreenBodyUserSportStatsStatsVolleyballBlockingLabel, value: stats.blocking),
        (label: homeScreenBodyUserSportStatsStatsVolleyballServingLabel, value: stats.serving),
        (label: homeScreenBodyUserSportStatsStatsVolleyballReceptionLabel, value: stats.reception),
      ],
    };
  }
}
