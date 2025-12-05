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
    MmLogger.info('[HttpClient.get]: "${_buildUri(path, queryParameters: queryParameters, baseUrl: baseUrl)}".');
    return await _runRequest<T>(
      () async => await _client
          .get(
            _buildUri(path, queryParameters: queryParameters, baseUrl: baseUrl),
            headers: _baseHeaders,
          )
          .timeout(timeoutDuration),
    );
  }

  /// Post function.
  Future<HttpClientResponse> post(String path, {Map<String, dynamic>? data, String baseUrl = kMyoroEmptyString}) async {
    MmLogger.info('[HttpClient.post]: "${_buildUri(path, baseUrl: baseUrl)}".');
    return await _runRequest(() async {
      final body = data != null ? jsonEncode(data) : null;
      return await _client
          .post(
            _buildUri(path, baseUrl: baseUrl),
            headers: _baseHeaders,
            body: body,
          )
          .timeout(timeoutDuration);
    });
  }

  /// Put function.
  Future<HttpClientResponse> put(String path, {Map<String, dynamic>? data, String baseUrl = kMyoroEmptyString}) async {
    MmLogger.info('[HttpClient.put]: "${_buildUri(path, baseUrl: baseUrl)}".');
    return await _runRequest(() async {
      final body = data != null ? jsonEncode(data) : null;
      return await _client
          .put(
            _buildUri(path, baseUrl: baseUrl),
            headers: _baseHeaders,
            body: body,
          )
          .timeout(timeoutDuration);
    });
  }

  /// Delete function.
  Future<HttpClientResponse> delete(String path, {String baseUrl = kMyoroEmptyString}) async {
    MmLogger.info('[HttpClient.delete]: "${_buildUri(path, baseUrl: baseUrl)}".');
    return await _runRequest(
      () async =>
          await _client.delete(_buildUri(path, baseUrl: baseUrl), headers: _baseHeaders).timeout(timeoutDuration),
    );
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
      if (statusCode >= 400) {
        final message = (response.data as Map<String, dynamic>)['message'];
        await MmLogger.error('[HttpClient._runRequest]: Request failed with status $statusCode: $message.');
        throw ApiException(message);
      }

      MmLogger.success('[HttpClient._runRequest]: Request succeeded with status $statusCode.');
      return response;
    } on SocketException catch (e, stackTrace) {
      await MmLogger.error('[HttpClient._runRequest]: Connection failed.', e, stackTrace);
      throw ApiException(localization.httpClientConnectionExceptionMessage);
    } on TimeoutException catch (e, stackTrace) {
      await MmLogger.error('[HttpClient._runRequest]: Request timeout.', e, stackTrace);
      throw ApiException(localization.httpClientConnectionExceptionMessage);
    } on ApiException catch (e, stackTrace) {
      // Re-throw ApiException but try to extract status code if available
      await MmLogger.error('[HttpClient._runRequest]: API exception occurred.', e, stackTrace);
      rethrow;
    } catch (e, stackTrace) {
      await MmLogger.error('[HttpClient._runRequest]: Unexpected error.', e, stackTrace);
      throw ApiException(e.toString());
    }
  }

  /// Base headers.
  Map<String, String> get _baseHeaders {
    final loggedInUser = _sharedPreferencesService.loggedInUser;
    return {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
      'Accept-Language': Localizations.localeOf(navigatorKey.currentContext!).languageCode,
      'User-Agent': 'MyoroMatchup/0.1.0 (com.myoro.myoro_matchup)',
      if (loggedInUser != null) 'Authorization': 'Bearer ${loggedInUser.token}',
    };
  }
}
