import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:myoro_matchup/core/function/configure_get_it.config.dart';

final getIt = GetIt.instance;

@InjectableInit()
void configureGetIt() {
  getIt.init();
}
