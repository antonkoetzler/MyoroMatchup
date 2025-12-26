import 'package:injectable/injectable.dart';
import 'package:myoro_matchup/core/dependency_injection/init/configure_get_it.config.dart';
import 'package:myoro_matchup/myoro_matchup.dart';

/// Configures the get it instance.
@InjectableInit()
Future<void> configureGetIt() async {
  await getIt.init();
}
