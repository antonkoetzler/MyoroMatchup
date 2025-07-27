import 'package:faker/faker.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';

part 'user.g.dart';

/// User model.
@myoroModel
final class User with _$UserMixin {
  const User({required this.username});

  User.fake() : username = faker.internet.userName();

  /// Username.
  final String username;
}
