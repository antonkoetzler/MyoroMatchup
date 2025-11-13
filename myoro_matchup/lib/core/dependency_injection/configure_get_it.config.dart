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
import 'package:myoro_matchup/common/widget/widget/input/location_input/view_model/mm_location_input_view_model.dart'
    as _i789;
import 'package:myoro_matchup/core/auth/repository/auth_repository.dart'
    as _i643;
import 'package:myoro_matchup/core/auth/service/auth_service.dart' as _i206;
import 'package:myoro_matchup/core/http/http_client.dart' as _i126;
import 'package:myoro_matchup/core/routing/module/app_router_module.dart'
    as _i436;
import 'package:myoro_matchup/core/shared_preferences/module/shared_preferences_module.dart'
    as _i407;
import 'package:myoro_matchup/core/shared_preferences/service/shared_preferences_service.dart'
    as _i980;
import 'package:myoro_matchup/module/game/domain/repository/game_repository.dart'
    as _i1006;
import 'package:myoro_matchup/module/game/screen/creation/view_model/game_creation_screen_view_model.dart'
    as _i606;
import 'package:myoro_matchup/module/game/screen/details/view_model/game_details_screen_view_model.dart'
    as _i17;
import 'package:myoro_matchup/module/game/screen/listing/view_model/game_listing_screen_view_model.dart'
    as _i512;
import 'package:myoro_matchup/module/location/domain/repository/location_repository.dart'
    as _i143;
import 'package:myoro_matchup/module/login_signup/screen/login_signup/view_model/login_signup_screen_view_model.dart'
    as _i205;
import 'package:myoro_matchup/module/user/repository/user_repository.dart'
    as _i624;
import 'package:myoro_matchup/module/user/screen/user/view_model/user_screen_view_model.dart'
    as _i46;
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
    final sharedPreferencesModule = _$SharedPreferencesModule();
    final appRouterModule = _$AppRouterModule();
    await gh.singletonAsync<_i460.SharedPreferences>(
      () => sharedPreferencesModule.sharedPreferences,
      preResolve: true,
    );
    gh.singleton<_i980.SharedPreferencesService>(
      () => _i980.SharedPreferencesService(gh<_i460.SharedPreferences>()),
    );
    gh.singleton<_i126.HttpClient>(
      () => _i126.HttpClient(gh<_i460.SharedPreferencesService>()),
    );
    gh.singleton<_i782.UserService>(
      () => _i782.UserService(gh<_i460.SharedPreferencesService>()),
    );
    gh.factory<_i643.AuthRepository>(
      () => _i643.AuthRepository(gh<_i460.HttpClient>()),
    );
    gh.factory<_i1006.GameRepository>(
      () => _i1006.GameRepository(gh<_i460.HttpClient>()),
    );
    gh.factory<_i143.LocationRepository>(
      () => _i143.LocationRepository(gh<_i460.HttpClient>()),
    );
    gh.factory<_i624.UserRepository>(
      () => _i624.UserRepository(gh<_i460.HttpClient>()),
    );
    await gh.singletonAsync<_i460.AppRouter>(
      () => appRouterModule.appRouter(gh<_i460.UserService>()),
      preResolve: true,
    );
    gh.factory<_i206.AuthService>(
      () => _i206.AuthService(
        gh<_i460.SharedPreferencesService>(),
        gh<_i460.AuthRepository>(),
      ),
    );
    gh.factory<_i512.GameListingScreenViewModel>(
      () => _i512.GameListingScreenViewModel(gh<_i460.GameRepository>()),
    );
    gh.factory<_i46.UserScreenViewModel>(
      () => _i46.UserScreenViewModel(
        gh<_i460.UserService>(),
        gh<_i460.UserRepository>(),
      ),
    );
    gh.factory<_i606.GameCreationScreenViewModel>(
      () => _i606.GameCreationScreenViewModel(gh<_i460.GameRepository>()),
    );
    gh.factory<_i17.GameDetailsScreenViewModel>(
      () => _i17.GameDetailsScreenViewModel(gh<_i460.GameRepository>()),
    );
    gh.factory<_i789.MmLocationInputViewModel>(
      () => _i789.MmLocationInputViewModel(gh<_i460.LocationRepository>()),
    );
    gh.factory<_i205.LoginSignupScreenViewModel>(
      () => _i205.LoginSignupScreenViewModel(gh<_i460.AuthService>()),
    );
    return this;
  }
}

class _$SharedPreferencesModule extends _i407.SharedPreferencesModule {}

class _$AppRouterModule extends _i436.AppRouterModule {}
