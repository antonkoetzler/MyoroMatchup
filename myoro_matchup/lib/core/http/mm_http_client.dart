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
final class MmHttpClient {
  /// Default constructor.
  MmHttpClient(this._sharedPreferencesService);

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
    final uri = _buildUri(path, baseUrl, queryParameters);
    return await _runRequest<T>(
      uri.toString(),
      () async => await _client.get(uri, headers: _baseHeaders).timeout(timeoutDuration),
    );
  }

  /// Post function.
  Future<HttpClientResponse> post(String path, {Map<String, dynamic>? data, String baseUrl = kMyoroEmptyString}) async {
    final uri = _buildUri(path, baseUrl);
    return await _runRequest(uri.toString(), () async {
      final body = data != null ? jsonEncode(data) : null;
      return await _client.post(uri, headers: _baseHeaders, body: body).timeout(timeoutDuration);
    });
  }

  /// Put function.
  Future<HttpClientResponse> put(String path, {Map<String, dynamic>? data, String baseUrl = kMyoroEmptyString}) async {
    final uri = _buildUri(path, baseUrl);
    return await _runRequest(uri.toString(), () async {
      final body = data != null ? jsonEncode(data) : null;
      return await _client.put(uri, headers: _baseHeaders, body: body).timeout(timeoutDuration);
    });
  }

  /// Delete function.
  Future<HttpClientResponse> delete(String path, {String baseUrl = kMyoroEmptyString}) async {
    final uri = _buildUri(path, baseUrl);
    return await _runRequest(
      uri.toString(),
      () async => await _client.delete(uri, headers: _baseHeaders).timeout(timeoutDuration),
    );
  }

  /// Build URI from path and query parameters.
  Uri _buildUri(String path, [String baseUrl = kMyoroEmptyString, Map<String, dynamic>? queryParameters]) {
    baseUrl = baseUrl.isEmpty ? EnvironmentConfiguration.apiUrl : baseUrl;
    final uri = Uri.parse('$baseUrl$path');
    return queryParameters != null && queryParameters.isNotEmpty
        ? uri.replace(queryParameters: queryParameters.map((key, value) => MapEntry(key, value.toString())))
        : uri;
  }

  /// Runs a request.
  Future<HttpClientResponse<T>> _runRequest<T>(String endpoint, Future<Response> Function() request) async {
    try {
      final response = HttpClientResponse<T>.fromResponse(await request());
      final statusCode = response.statusCode;

      const jsonEncoder = JsonEncoder.withIndent('  ');

      // Throw exception if status code is greater than or equal to 400.
      if (statusCode >= 400) {
        final message = (response.data as Map<String, dynamic>)['message'];
        await MmLogger.error(
          '[MmHttpClient._runRequest]: Request failed - $endpoint | Status: $statusCode | Response: ${jsonEncoder.convert(response.data)}',
        );
        throw ApiException(message);
      }

      MmLogger.info(
        '[MmHttpClient._runRequest]: Request succeeded - $endpoint | Status: $statusCode | Response: ${jsonEncoder.convert(response.data)}',
      );
      return response;
    } on SocketException catch (e, stackTrace) {
      await MmLogger.error('[MmHttpClient._runRequest]: Connection failed - $endpoint', e, stackTrace);
      throw ApiException(localization.httpClientConnectionExceptionMessage);
    } on TimeoutException catch (e, stackTrace) {
      await MmLogger.error('[MmHttpClient._runRequest]: Request timeout - $endpoint', e, stackTrace);
      throw ApiException(localization.httpClientConnectionExceptionMessage);
    } on ApiException catch (e, stackTrace) {
      // Re-throw ApiException but try to extract status code if available
      await MmLogger.error('[MmHttpClient._runRequest]: API exception occurred - $endpoint', e, stackTrace);
      rethrow;
    } catch (e, stackTrace) {
      await MmLogger.error('[MmHttpClient._runRequest]: Unexpected error - $endpoint', e, stackTrace);
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
