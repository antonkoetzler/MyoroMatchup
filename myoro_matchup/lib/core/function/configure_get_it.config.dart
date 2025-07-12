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
import 'package:myoro_matchup/myoro_matchup.dart' as _i460;
import 'package:myoro_matchup/screen/game/service/game/game_service_api.dart'
    as _i495;
import 'package:myoro_matchup/screen/game/view_model/home_screen_view_model.dart'
    as _i837;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    gh.lazySingleton<_i460.GameService>(() => _i495.GameServiceApi());
    gh.factory<_i837.GameScreenViewModel>(
      () => _i837.GameScreenViewModel(gh<_i460.GameService>()),
    );
    return this;
  }
}
