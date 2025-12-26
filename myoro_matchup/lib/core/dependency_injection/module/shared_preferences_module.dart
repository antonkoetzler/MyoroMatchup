import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

/// Module for registering SharedPreferences with dependency injection.
@module
abstract class SharedPreferencesModule {
  /// Provides SharedPreferences instance.
  @preResolve
  @singleton
  Future<SharedPreferences> get sharedPreferences => SharedPreferences.getInstance();
}
