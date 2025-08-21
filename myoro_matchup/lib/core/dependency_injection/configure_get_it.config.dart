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
import 'package:myoro_matchup/core/routing/app_router.dart' as _i49;
import 'package:myoro_matchup/module/game/domain/service/game/game_service_api.dart'
    as _i859;
import 'package:myoro_matchup/module/game/screen/details/view_model/game_details_screen_view_model.dart'
    as _i17;
import 'package:myoro_matchup/module/game/screen/listing/view_model/game_listing_screen_view_model.dart'
    as _i512;
import 'package:myoro_matchup/module/location/domain/service/location/location_service_api.dart'
    as _i1003;
import 'package:myoro_matchup/module/login_signup/screen/login_signup/view_model/login_signup_screen_view_model.dart'
    as _i205;
import 'package:myoro_matchup/module/user/domain/service/user/user_service_api.dart'
    as _i741;
import 'package:myoro_matchup/myoro_matchup.dart' as _i460;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    gh.singleton<_i460.LocationService>(() => _i1003.LocationServiceApi());
    gh.singleton<_i460.UserService>(() => _i741.UserServiceApi());
    gh.singleton<_i460.GameService>(() => _i859.GameServiceApi());
    gh.factory<_i205.LoginSignupScreenViewModel>(
      () => _i205.LoginSignupScreenViewModel(gh<_i460.UserService>()),
    );
    gh.singleton<_i49.AppRouter>(() => _i49.AppRouter(gh<_i460.UserService>()));
    gh.factory<_i789.MmLocationInputViewModel>(
      () => _i789.MmLocationInputViewModel(gh<_i460.LocationService>()),
    );
    gh.factory<_i17.GameDetailsScreenViewModel>(
      () => _i17.GameDetailsScreenViewModel(gh<_i460.GameService>()),
    );
    gh.factory<_i512.GameListingScreenViewModel>(
      () => _i512.GameListingScreenViewModel(gh<_i460.GameService>()),
    );
    return this;
  }
}
