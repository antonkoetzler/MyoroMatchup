import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';

part 'http_client_response.g.dart';

/// HTTP client response.
@immutable
@myoroModel
final class HttpClientResponse with _$HttpClientResponseMixin {
  /// Default constructor.
  const HttpClientResponse({required this.statusCode, required this.data});

  /// Factory constructor from a [Response].
  HttpClientResponse.fromResponse(Response response)
    : statusCode = response.statusCode,
      data = jsonDecode(response.body);

  /// Status code.
  final int statusCode;

  /// Response JSON.
  final Map<String, dynamic> data;
}
