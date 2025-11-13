import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';
import 'package:injectable/injectable.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:myoro_matchup/myoro_matchup.dart';

/// Http client for the API.
@singleton
final class HttpClient {
  /// Default constructor.
  HttpClient(this._sharedPreferencesService);

  /// Shared preferences service.
  final SharedPreferencesService _sharedPreferencesService;

  /// Timeout for the requests.
  static const timeoutDuration = Duration(seconds: 10);

  /// Http client instance.
  final _client = http.Client();

  /// Get function.
  Future<HttpClientResponse<T>> get<T>(
    String path, {
    Map<String, dynamic>? queryParameters,
    String baseUrl = kMyoroEmptyString,
  }) async {
    return await _runRequest<T>(() async {
      final uri = _buildUri(path, queryParameters: queryParameters, baseUrl: baseUrl);
      return await _client.get(uri, headers: _baseHeaders).timeout(timeoutDuration);
    });
  }

  /// Post function.
  Future<HttpClientResponse> post(String path, {Map<String, dynamic>? data, String baseUrl = kMyoroEmptyString}) async {
    return await _runRequest(() async {
      final uri = _buildUri(path, baseUrl: baseUrl);
      final body = data != null ? jsonEncode(data) : null;
      return await _client.post(uri, headers: _baseHeaders, body: body).timeout(timeoutDuration);
    });
  }

  /// Build URI from path and query parameters.
  Uri _buildUri(String path, {Map<String, dynamic>? queryParameters, String baseUrl = kMyoroEmptyString}) {
    baseUrl = baseUrl.isEmpty ? EnvironmentConfiguration.apiUrl : baseUrl;
    final uri = Uri.parse('$baseUrl$path');
    return queryParameters != null && queryParameters.isNotEmpty
        ? uri.replace(queryParameters: queryParameters.map((key, value) => MapEntry(key, value.toString())))
        : uri;
  }

  /// Runs a request.
  Future<HttpClientResponse<T>> _runRequest<T>(Future<Response> Function() request) async {
    try {
      final response = HttpClientResponse<T>.fromResponse(await request());
      final statusCode = response.statusCode;

      // Throw exception if status code is greater than or equal to 400.
      if (statusCode >= 400) throw ApiException((response.data as Map<String, dynamic>)['message']);

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
    final loggedInUser = _sharedPreferencesService.getJson(SharedPreferencesEnum.loggedInUser);
    return {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
      'Accept-Language': Localizations.localeOf(navigatorKey.currentContext!).languageCode,
      'User-Agent': 'MyoroMatchup/0.1.0 (com.myoro.myoro_matchup)',
      if (loggedInUser != null) 'Authorization': 'Bearer ${loggedInUser['token']}',
    };
  }
}
