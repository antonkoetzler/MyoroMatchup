import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:myoro_matchup/myoro_matchup.dart';

/// Http client for the API.
@singleton
final class HttpClient {
  /// Timeout for the requests.
  static const timeoutDuration = Duration(seconds: 10);

  /// Default constructor.
  HttpClient() {
    _init();
  }

  /// Dio instance.
  final _dio = Dio();

  /// Get function.
  Future<T> get<T>(String path, {Map<String, dynamic>? queryParameters}) async {
    final response = await _dio.get(path, queryParameters: queryParameters);
    return response.data as T;
  }

  /// Post function.
  Future<T> post<T>(String path, {Map<String, dynamic>? data}) async {
    final response = await _dio.post(path, data: data);
    return response.data as T;
  }

  /// Initialize the dio instance.
  void _init() {
    _dio
      ..options = BaseOptions(
        baseUrl: EnvironmentConfiguration.apiUrl,
        connectTimeout: timeoutDuration,
        receiveTimeout: timeoutDuration,
        headers: {'Content-Type': 'application/json', 'Accept': 'application/json'},
      )
      ..interceptors.add(
        InterceptorsWrapper(
          onRequest: (options, handler) {
            final context = navigatorKey.currentContext;
            if (context != null) {
              final locale = Localizations.localeOf(context);
              options.headers['Accept-Language'] = locale.languageCode;
            }
            handler.next(options);
          },
        ),
      );
  }
}
