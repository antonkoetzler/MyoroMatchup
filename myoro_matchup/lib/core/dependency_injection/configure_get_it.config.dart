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
import 'package:myoro_matchup/core/module/modules_controller.dart' as _i264;
import 'package:myoro_matchup/core/router/app_router.dart' as _i854;
import 'package:myoro_matchup/core/service/user_service/user_service_api.dart'
    as _i614;
import 'package:myoro_matchup/module/game/screen/game/service/game/game_service_api.dart'
    as _i358;
import 'package:myoro_matchup/module/game/screen/game/view_model/home_screen_view_model.dart'
    as _i230;
import 'package:myoro_matchup/module/login_signup/screen/login_signup/view_model/login_signup_screen_view_model.dart'
    as _i205;
import 'package:myoro_matchup/myoro_matchup.dart' as _i460;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    gh.factory<_i205.LoginSignupScreenViewModel>(
      () => _i205.LoginSignupScreenViewModel(),
    );
    gh.singleton<_i264.ModulesController>(() => _i264.ModulesController());
    gh.singleton<_i460.UserService>(() => _i614.UserServiceApi());
    gh.singleton<_i854.AppRouter>(
      () => _i854.AppRouter(
        gh<_i460.ModulesController>(),
        gh<_i460.UserService>(),
      ),
    );
    gh.singleton<_i460.GameService>(() => _i358.GameServiceApi());
    gh.factory<_i230.GameScreenViewModel>(
      () => _i230.GameScreenViewModel(gh<_i460.GameService>()),
    );
    return this;
  }
}
