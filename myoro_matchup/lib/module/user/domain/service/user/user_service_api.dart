import 'dart:async';

import 'package:faker/faker.dart';
import 'package:injectable/injectable.dart';
import 'package:myoro_matchup/myoro_matchup.dart';

/// API implementation of [UserService].
@Singleton(as: UserService)
final class UserServiceApi implements UserService {
  @override
  Future<int> create(User model) async {
    // TODO: Mocked.
    await Future.delayed(const Duration(seconds: 2));
    return faker.randomGenerator.integer(9999);
  }

  @override
  Future<User>? get(int id) {
    // TODO: implement get
    throw UnimplementedError();
  }

  @override
  Future<Set<User>> select([Map<String, dynamic> queryParameters = const {}]) {
    // TODO: implement select
    throw UnimplementedError();
  }

  @override
  Future<void> update(int id, User data) {
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
    return true;
  }
}
