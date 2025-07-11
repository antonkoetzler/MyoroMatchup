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
import 'package:myoro_matchup/screen/home/service/game/game_service_api.dart'
    as _i978;
import 'package:myoro_matchup/screen/home/view_model/home_screen_view_model.dart'
    as _i590;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    gh.lazySingleton<_i460.GameService>(() => _i978.GameServiceApi());
    gh.factory<_i590.HomeScreenViewModel>(
      () => _i590.HomeScreenViewModel(gh<_i460.GameService>()),
    );
    return this;
  }
}
