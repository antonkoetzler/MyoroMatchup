import 'package:injectable/injectable.dart';
import 'package:myoro_matchup/myoro_matchup.dart';

/// Repository for [User].
@injectable
final class UserRepository {
  /// Default constructor.
  UserRepository(this._httpClient);

  /// HTTP client.
  final HttpClient _httpClient;

  Future<User> get(int id) async {
    final response = await _httpClient.get('/user/$id');
    return User.fromJson(response.data);
  }
}
