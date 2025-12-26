import 'package:injectable/injectable.dart';
import 'package:myoro_matchup/myoro_matchup.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

/// Service for the Supabase client.
@injectable
final class MmSupabaseService {
  /// Default constructor.
  MmSupabaseService(this._envConfiguration);

  /// [MmEnvConfiguration] instance.
  final MmEnvConfiguration _envConfiguration;

  /// Sign in with OAuth.
  Future<void> signInWithOAuth(OAuthProvider provider) async {
    final oAuthRedirectUrl = _envConfiguration.supabaseOAuthRedirectUrl;
    await mmSupabase.auth.signInWithOAuth(provider, redirectTo: oAuthRedirectUrl);
  }
}
