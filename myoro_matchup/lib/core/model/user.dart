import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';

part 'user.g.dart';

/// User model.
@myoroModel
final class User with _$UserMixin {
  const User({required this.username});

  /// Username.
  final String username;
}
