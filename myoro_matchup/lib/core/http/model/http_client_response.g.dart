// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'http_client_response.dart';

// **************************************************************************
// MyoroModelGenerator
// **************************************************************************

// coverage:ignore-file

/// Apply this mixin to [HttpClientResponse] once the code is generated.
///
/// ```dart
/// class HttpClientResponse with _$HttpClientResponseMixin {}
/// ```
mixin _$HttpClientResponseMixin {
  HttpClientResponse get self => this as HttpClientResponse;

  HttpClientResponse copyWith({int? statusCode, Map<String, dynamic>? data}) {
    return HttpClientResponse(statusCode: statusCode ?? self.statusCode, data: data ?? self.data);
  }

  @override
  bool operator ==(Object other) {
    return other is HttpClientResponse &&
        other.runtimeType == runtimeType &&
        other.statusCode == self.statusCode &&
        other.data == self.data;
  }

  @override
  int get hashCode {
    return Object.hash(self.statusCode, self.data);
  }

  @override
  String toString() =>
      'HttpClientResponse(\n'
      '  statusCode: ${self.statusCode},\n'
      '  data: ${self.data},\n'
      ');';
}
