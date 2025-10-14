import 'package:injectable/injectable.dart';
import 'package:myoro_matchup/myoro_matchup.dart';

/// Repository for users.
@injectable
final class UserRepository implements MmCrudRepository<User> {
  /// Default constructor.
  UserRepository(this._httpClient);

  /// Http client.
  final HttpClient _httpClient;

  /// Create function.
  @override
  Future<int> create(User model) async {
    return await _httpClient.post('auth/signup', data: model.toJson());
  }

  /// Get function.
  @override
  Future<User>? get(int id) {
    // TODO: implement get
    throw UnimplementedError();
  }

  /// Select function.
  @override
  Future<Set<User>> select() async {
    // TODO: implement select
    throw UnimplementedError();
  }

  /// Update function.
  @override
  Future<void> update(int id, User data) {
    // TODO: implement update
    throw UnimplementedError();
  }

  /// Delete function.
  @override
  Future<void> delete(int id) {
    // TODO: implement delete
    throw UnimplementedError();
  }
}
