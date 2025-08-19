import 'package:flutter/foundation.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';

part 'location.g.dart';

/// Location model.
@immutable
@myoroModel
@JsonSerializable()
final class Location with _$LocationMixin {
  const Location({
  });
}