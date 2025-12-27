// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:myoro_matchup/common/service/mm_supabase_service.dart' as _i88;
import 'package:myoro_matchup/common/widget/widget/input/location_input/view_model/mm_location_input_view_model.dart'
    as _i789;
import 'package:myoro_matchup/core/auth/repository/auth_repository.dart'
    as _i643;
import 'package:myoro_matchup/core/auth/service/auth_service.dart' as _i206;
import 'package:myoro_matchup/core/dependency_injection/module/mm_env_configuration_module.dart'
    as _i714;
import 'package:myoro_matchup/core/dependency_injection/module/mm_router_module.dart'
    as _i691;
import 'package:myoro_matchup/core/dependency_injection/module/shared_preferences_module.dart'
    as _i704;
import 'package:myoro_matchup/core/http/mm_http_client.dart' as _i501;
import 'package:myoro_matchup/core/shared_preferences/repository/shared_preferences_repository.dart'
    as _i558;
import 'package:myoro_matchup/core/shared_preferences/service/shared_preferences_service.dart'
    as _i980;
import 'package:myoro_matchup/module/friend/repository/friend_repository.dart'
    as _i150;
import 'package:myoro_matchup/module/friend/screen/listing/view_model/friend_listing_screen_view_model.dart'
    as _i898;
import 'package:myoro_matchup/module/game/domain/repository/game_repository.dart'
    as _i1006;
import 'package:myoro_matchup/module/game/screen/creation/view_model/game_creation_screen_view_model.dart'
    as _i606;
import 'package:myoro_matchup/module/game/screen/details/view_model/game_details_screen_view_model.dart'
    as _i17;
import 'package:myoro_matchup/module/home/screen/listing/view_model/home_screen_view_model.dart'
    as _i1009;
import 'package:myoro_matchup/module/invitation/repository/invitation_repository.dart'
    as _i509;
import 'package:myoro_matchup/module/invitation/screen/listing/view_model/invitation_listing_screen_view_model.dart'
    as _i296;
import 'package:myoro_matchup/module/location/domain/repository/open_street_map_location_repository.dart'
    as _i423;
import 'package:myoro_matchup/module/login_signup/screen/login_signup/view_model/login_signup_screen_view_model.dart'
    as _i205;
import 'package:myoro_matchup/module/subscription/service/subscription_service.dart'
    as _i595;
import 'package:myoro_matchup/module/user/screen/details/view_model/user_details_screen_view_model.dart'
    as _i703;
import 'package:myoro_matchup/module/user/service/user_service.dart' as _i782;
import 'package:myoro_matchup/myoro_matchup.dart' as _i460;
import 'package:shared_preferences/shared_preferences.dart' as _i460;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  Future<_i174.GetIt> init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    final mmEnvConfigurationModule = _$MmEnvConfigurationModule();
    final sharedPreferencesModule = _$SharedPreferencesModule();
    final mmRouterModule = _$MmRouterModule();
    gh.factory<_i88.MmSupabaseService>(() => _i88.MmSupabaseService());
    await gh.singletonAsync<_i460.MmEnvConfiguration>(
      () => mmEnvConfigurationModule.envConfiguration,
      preResolve: true,
    );
    await gh.singletonAsync<_i460.SharedPreferences>(
      () => sharedPreferencesModule.sharedPreferences,
      preResolve: true,
    );
    gh.singleton<_i558.SharedPreferencesRepository>(
      () => _i558.SharedPreferencesRepository(gh<_i460.SharedPreferences>()),
    );
    gh.factory<_i980.SharedPreferencesService>(
      () => _i980.SharedPreferencesService(
        gh<_i460.SharedPreferencesRepository>(),
      ),
    );
    gh.lazySingleton<_i595.SubscriptionService>(
      () => _i595.SubscriptionService(gh<_i460.SharedPreferencesService>()),
    );
    gh.singleton<_i501.MmHttpClient>(
      () => _i501.MmHttpClient(gh<_i460.SharedPreferencesService>()),
    );
    gh.factory<_i782.UserService>(
      () => _i782.UserService(gh<_i460.SharedPreferencesService>()),
    );
    gh.factory<_i643.AuthRepository>(
      () => _i643.AuthRepository(gh<_i460.MmHttpClient>()),
    );
    gh.factory<_i150.FriendRepository>(
      () => _i150.FriendRepository(gh<_i460.MmHttpClient>()),
    );
    gh.factory<_i1006.GameRepository>(
      () => _i1006.GameRepository(gh<_i460.MmHttpClient>()),
    );
    gh.factory<_i509.InvitationRepository>(
      () => _i509.InvitationRepository(gh<_i460.MmHttpClient>()),
    );
    gh.factory<_i423.OpenStreetMapLocationRepository>(
      () => _i423.OpenStreetMapLocationRepository(gh<_i460.MmHttpClient>()),
    );
    gh.factory<_i789.MmLocationInputViewModel>(
      () => _i789.MmLocationInputViewModel(
        gh<_i460.OpenStreetMapLocationRepository>(),
      ),
    );
    gh.factory<_i703.UserDetailsScreenViewModel>(
      () => _i703.UserDetailsScreenViewModel(
        gh<_i460.SharedPreferencesService>(),
        gh<_i460.UserService>(),
      ),
    );
    gh.factoryParam<_i17.GameDetailsScreenViewModel, int, dynamic>(
      (gameId, _) => _i17.GameDetailsScreenViewModel(
        gh<_i460.UserService>(),
        gh<_i460.GameRepository>(),
        gh<_i460.InvitationRepository>(),
        gameId,
      ),
    );
    await gh.singletonAsync<_i460.MmRouter>(
      () => mmRouterModule.appRouter(gh<_i460.UserService>()),
      preResolve: true,
    );
    gh.factory<_i205.LoginSignupScreenViewModel>(
      () => _i205.LoginSignupScreenViewModel(
        gh<_i460.MmSupabaseService>(),
        gh<_i460.UserService>(),
      ),
    );
    gh.factory<_i898.FriendListingScreenViewModel>(
      () => _i898.FriendListingScreenViewModel(gh<_i460.FriendRepository>()),
    );
    gh.factory<_i206.AuthService>(
      () => _i206.AuthService(
        gh<_i460.SharedPreferencesService>(),
        gh<_i460.AuthRepository>(),
      ),
    );
    gh.factory<_i1009.HomeScreenViewModel>(
      () => _i1009.HomeScreenViewModel(
        gh<_i460.SharedPreferencesService>(),
        gh<_i460.UserService>(),
        gh<_i460.GameRepository>(),
      ),
    );
    gh.factory<_i606.GameCreationScreenViewModel>(
      () => _i606.GameCreationScreenViewModel(gh<_i460.GameRepository>()),
    );
    gh.factory<_i296.InvitationListingScreenViewModel>(
      () => _i296.InvitationListingScreenViewModel(
        gh<_i460.InvitationRepository>(),
      ),
    );
    return this;
  }
}

class _$MmEnvConfigurationModule extends _i714.MmEnvConfigurationModule {}

class _$SharedPreferencesModule extends _i704.SharedPreferencesModule {}

class _$MmRouterModule extends _i691.MmRouterModule {}
