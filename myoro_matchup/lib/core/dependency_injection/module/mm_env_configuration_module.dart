import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:injectable/injectable.dart';
import 'package:myoro_matchup/myoro_matchup.dart';

/// Module for registering [MmEnvConfiguration] with dependency injection.
@module
abstract class MmEnvConfigurationModule {
  /// Provides [MmEnvConfiguration] instance.
  @preResolve
  @singleton
  Future<MmEnvConfiguration> get envConfiguration async {
    await dotenv.load(fileName: '.env');
    return MmEnvConfiguration.fromJson(dotenv.env);
  }
}
