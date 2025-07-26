import 'dart:async';

import 'package:injectable/injectable.dart';
import 'package:myoro_matchup/myoro_matchup.dart';

/// API implementation of [UserService].
@Singleton(as: UserService)
final class UserServiceApi implements UserService {
  @override
  Future<int> create(User model) {
    // TODO: implement create
    throw UnimplementedError();
  }

  @override
  Future<User>? get({Map<String, dynamic>? queryParameters}) {
    // TODO: implement get
    throw UnimplementedError();
  }

  @override
  Future<Set<User>> select({Map<String, dynamic>? queryParameters}) {
    // TODO: implement select
    throw UnimplementedError();
  }

  @override
  Future<void> update(User data) {
    // TODO: implement update
    throw UnimplementedError();
  }

  @override
  Future<void> delete(int id) {
    // TODO: implement delete
    throw UnimplementedError();
  }

  @override
  @override
  Future<bool> isLoggedIn() async {
    // TODO: Mocked.
    return false;
  }
}
