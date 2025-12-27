import 'package:injectable/injectable.dart';
import 'package:myoro_matchup/myoro_matchup.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

/// Service for the Supabase client.
@injectable
final class MmSupabaseService {
  /// Sign in with OAuth.
  Future<void> signInWithOAuth(OAuthProvider provider) async {
    await mmSupabase.auth.signInWithOAuth(
      provider,
      redirectTo: 'com.supabase.com.myoro.myoromatchup://login-callback',
      authScreenLaunchMode: LaunchMode.inAppWebView,
    );
  }
}
