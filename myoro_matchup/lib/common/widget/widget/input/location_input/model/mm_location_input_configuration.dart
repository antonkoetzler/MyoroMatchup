import 'package:flutter/foundation.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_matchup/myoro_matchup.dart';

part 'mm_location_input_configuration.g.dart';

/// Configuration model of [MmLocationInput].
@immutable
@myoroModel
final class MmLocationInputConfiguration with _$MmLocationInputConfigurationMixin {
  const MmLocationInputConfiguration({required this.type});

  MmLocationInputConfiguration.fake() : type = MmLocationInputTypeEnum.fake();

  /// Type of location being queried.
  final MmLocationInputTypeEnum type;
}
