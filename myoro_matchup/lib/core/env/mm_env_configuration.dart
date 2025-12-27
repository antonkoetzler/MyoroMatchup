import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';

part 'mm_env_configuration.g.dart';

/// .env configuration.
@immutable
@myoroModel
@JsonSerializable(createToJson: false)
final class MmEnvConfiguration with _$MmEnvConfigurationMixin {
  /// Default constructor.
  const MmEnvConfiguration({required this.supabaseUrl, required this.supabaseApiKey});

  /// From JSON.
  factory MmEnvConfiguration.fromJson(Map<String, dynamic> json) {
    return _$MmEnvConfigurationFromJson(json);
  }

  /// Supabase URL.
  @JsonKey(name: 'SUPABASE_URL')
  final String supabaseUrl;

  /// Supabase API Key.
  @JsonKey(name: 'SUPABASE_ANON_KEY')
  final String supabaseApiKey;
}
