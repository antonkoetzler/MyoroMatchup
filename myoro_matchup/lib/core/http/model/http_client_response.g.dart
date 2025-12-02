// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'http_client_response.dart';

// **************************************************************************
// MyoroModelGenerator
// **************************************************************************

// coverage:ignore-file

/// Apply this mixin to [HttpClientResponse] once the code is generated.
///
/// ```dart
/// class HttpClientResponse<T> with _$HttpClientResponseMixin<T> {}
/// ```
mixin _$HttpClientResponseMixin<T> {
  HttpClientResponse<T> get self => this as HttpClientResponse<T>;

  HttpClientResponse<T> copyWith({int? statusCode, T? data}) {
    return HttpClientResponse(
      statusCode: statusCode ?? self.statusCode,
      data: data ?? self.data,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is HttpClientResponse<T> &&
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
      'HttpClientResponse<T>(\n'
      '  statusCode: ${self.statusCode},\n'
      '  data: ${self.data},\n'
      ');';
}
