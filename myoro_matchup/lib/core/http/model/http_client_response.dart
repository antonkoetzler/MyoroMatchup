import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';

part 'http_client_response.g.dart';

/// HTTP client response.
@immutable
@myoroModel
final class HttpClientResponse<T> with _$HttpClientResponseMixin<T> {
  /// Default constructor.
  const HttpClientResponse({required this.statusCode, required this.data});

  /// Factory constructor from a [Response].
  HttpClientResponse.fromResponse(Response response)
    : statusCode = response.statusCode,
      data = _convertData<T>(jsonDecode(response.body));

  /// Converts decoded JSON data to the appropriate type.
  static T _convertData<T>(dynamic decoded) {
    if (decoded is List) {
      final converted = <Map<String, dynamic>>[];
      for (final item in decoded) {
        if (item is Map) {
          converted.add(Map<String, dynamic>.from(item.map((key, value) => MapEntry(key.toString(), value))));
        }
      }
      return converted as T;
    }
    if (decoded is Map) {
      return Map<String, dynamic>.from(decoded.map((key, value) => MapEntry(key.toString(), value))) as T;
    }
    return decoded as T;
  }

  /// Status code.
  final int statusCode;

  /// Response JSON.
  final T data;
}
