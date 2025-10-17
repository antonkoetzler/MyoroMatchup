import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';
import 'package:injectable/injectable.dart';
import 'package:myoro_matchup/myoro_matchup.dart';

/// Http client for the API.
@singleton
final class HttpClient {
  /// Timeout for the requests.
  static const timeoutDuration = Duration(seconds: 10);

  /// Http client instance.
  final _client = http.Client();

  /// Get function.
  Future<HttpClientResponse> get(String path, {Map<String, dynamic>? queryParameters}) async {
    return await _runRequest(() async {
      final uri = _buildUri(path, queryParameters);
      return await _client.get(uri, headers: _baseHeaders).timeout(timeoutDuration);
    });
  }

  /// Post function.
  Future<HttpClientResponse> post(String path, {Map<String, dynamic>? data}) async {
    return await _runRequest(() async {
      final uri = _buildUri(path);
      final body = data != null ? jsonEncode(data) : null;
      return await _client.post(uri, headers: _baseHeaders, body: body).timeout(timeoutDuration);
    });
  }

  /// Build URI from path and query parameters.
  Uri _buildUri(String path, [Map<String, dynamic>? queryParameters]) {
    final baseUrl = EnvironmentConfiguration.apiUrl;
    final uri = Uri.parse('$baseUrl$path');
    return queryParameters != null && queryParameters.isNotEmpty
        ? uri.replace(queryParameters: queryParameters.map((key, value) => MapEntry(key, value.toString())))
        : uri;
  }

  /// Runs a request.
  Future<HttpClientResponse> _runRequest(Future<Response> Function() request) async {
    try {
      final response = HttpClientResponse.fromResponse(await request());
      final statusCode = response.statusCode;

      // Throw exception if status code is greater than or equal to 400.
      if (statusCode >= 400) throw ApiException(response.data['message']);

      return response;
    } on SocketException {
      throw ApiException(localization.httpClientConnectionExceptionMessage);
    } on TimeoutException {
      throw ApiException(localization.httpClientConnectionExceptionMessage);
    } catch (e) {
      throw ApiException(e.toString());
    }
  }

  /// Base headers.
  Map<String, String> get _baseHeaders {
    return {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
      'Accept-Language': Localizations.localeOf(navigatorKey.currentContext!).languageCode,
    };
  }
}
