import 'package:injectable/injectable.dart';
import 'package:myoro_matchup/myoro_matchup.dart';

/// User repository.
@injectable
final class UserRepository {
  /// Default constructor.
  UserRepository(this._httpClient);

  /// HTTP client.
  final HttpClient _httpClient;

  /// Gets a user by ID.
  ///
  /// If no [id] is provided, the logged in user's ID is used.
  Future<UserResponseDto> get(int id, {bool showStats = false}) async {
    final response = await _httpClient.get('/users/$id', queryParameters: {'showStats': showStats});
    return UserResponseDto.fromJson(response.data);
  }

  /// Gets all users.
  Future<Set<UserResponseDto>> getAll() async {
    final response = await _httpClient.get('/users');
    return response.data.map((e) => UserResponseDto.fromJson(e)).toList();
  }
}
