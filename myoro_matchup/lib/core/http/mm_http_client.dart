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
  Future<HttpClientResponse<T>> get<T>(String url, {Map<String, dynamic>? queryParameters}) async {
    final uri = _buildUri(url, queryParameters);
    return await _runRequest<T>(uri.toString(), () async {
      return await _client.get(uri, headers: _baseHeaders).timeout(timeoutDuration);
    });
  }

  /// Post function.
  Future<HttpClientResponse> post(String url, {Map<String, dynamic>? data}) async {
    final uri = _buildUri(url);
    return await _runRequest(uri.toString(), () async {
      final body = data != null ? jsonEncode(data) : null;
      return await _client.post(uri, headers: _baseHeaders, body: body).timeout(timeoutDuration);
    });
  }

  /// Put function.
  Future<HttpClientResponse> put(String url, {Map<String, dynamic>? data}) async {
    final uri = _buildUri(url);
    return await _runRequest(uri.toString(), () async {
      final body = data != null ? jsonEncode(data) : null;
      return await _client.put(uri, headers: _baseHeaders, body: body).timeout(timeoutDuration);
    });
  }

  /// Delete function.
  Future<HttpClientResponse> delete(String url) async {
    final uri = _buildUri(url);
    return await _runRequest(uri.toString(), () async {
      return await _client.delete(uri, headers: _baseHeaders).timeout(timeoutDuration);
    });
  }

  /// Post multipart function for file uploads.
  Future<HttpClientResponse> postMultipart(String url, {Map<String, dynamic>? data, Map<String, File>? files}) async {
    final uri = _buildUri(url);
    return await _runRequest(uri.toString(), () async {
      final request = http.MultipartRequest('POST', uri);

      // Add headers (excluding Content-Type for multipart)
      final headers = Map<String, String>.from(_baseHeaders);
      headers.remove('Content-Type');
      request.headers.addAll(headers);

      // Add form fields
      if (data != null) {
        data.forEach((key, value) {
          if (value != null) {
            if (value is Map || value is List) {
              request.fields[key] = jsonEncode(value);
            } else {
              request.fields[key] = value.toString();
            }
          }
        });
      }

      // Add files
      if (files != null) {
        files.forEach((key, file) {
          if (file.existsSync()) {
            final fileStream = http.ByteStream(file.openRead());
            final fileLength = file.lengthSync();
            final contentType = _getContentType(file.path);
            final multipartFile = http.MultipartFile(
              key,
              fileStream,
              fileLength,
              filename: file.path.split('/').last,
              contentType: contentType,
            );
            request.files.add(multipartFile);
          }
        });
      }

      final streamedResponse = await _client.send(request).timeout(timeoutDuration);
      final response = await http.Response.fromStream(streamedResponse);
      return response;
    });
  }

  /// Get content type from file extension.
  MediaType? _getContentType(String filePath) {
    final extension = filePath.split('.').last.toLowerCase();
    switch (extension) {
      case 'jpg':
      case 'jpeg':
        return MediaType('image', 'jpeg');
      case 'png':
        return MediaType('image', 'png');
      case 'gif':
        return MediaType('image', 'gif');
      case 'webp':
        return MediaType('image', 'webp');
      default:
        return null;
    }
  }

  /// Build URI from path and query parameters.
  Uri _buildUri(String url, [Map<String, dynamic>? queryParameters]) {
    final uri = Uri.parse(url);
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
        await MyoroLogger.error(
          '[MmHttpClient._runRequest]: Request failed - $endpoint | Status: $statusCode | Response: ${jsonEncoder.convert(response.data)}',
        );
        throw ApiException(message);
      }

      MyoroLogger.info(
        '[MmHttpClient._runRequest]: Request succeeded - $endpoint | Status: $statusCode | Response: ${jsonEncoder.convert(response.data)}',
      );
      return response;
    } on SocketException catch (e, stackTrace) {
      await MyoroLogger.error('[MmHttpClient._runRequest]: Connection failed - $endpoint', e, stackTrace);
      throw ApiException(localization.httpClientConnectionExceptionMessage);
    } on TimeoutException catch (e, stackTrace) {
      await MyoroLogger.error('[MmHttpClient._runRequest]: Request timeout - $endpoint', e, stackTrace);
      throw ApiException(localization.httpClientConnectionExceptionMessage);
    } on ApiException catch (e, stackTrace) {
      // Re-throw ApiException but try to extract status code if available
      await MyoroLogger.error('[MmHttpClient._runRequest]: API exception occurred - $endpoint', e, stackTrace);
      rethrow;
    } catch (e, stackTrace) {
      await MyoroLogger.error('[MmHttpClient._runRequest]: Unexpected error - $endpoint', e, stackTrace);
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
      'User-Agent': 'MyoroMatchup/0.0.1 (com.myoro.myoromatchup)',
      if (loggedInUser != null) 'Authorization': 'Bearer ${loggedInUser.token}',
    };
  }
}
