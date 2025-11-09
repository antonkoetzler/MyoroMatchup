import 'package:injectable/injectable.dart';
import 'package:myoro_matchup/myoro_matchup.dart';

/// Repository for getting locations.
@injectable
final class LocationRepository {
  /// Default constructor.
  const LocationRepository(this._httpClient);

  /// [HttpClient] to make the requests.
  final HttpClient _httpClient;

  /// Gets all [Location]s.
  Future<Set<Location>> select(String query) async {
    final response = await _httpClient.get<List<Map<String, dynamic>>>(
      '/search',
      queryParameters: {'format': 'json', 'addressdetails': '1', 'q': query},
      baseUrl: 'https://nominatim.openstreetmap.org',
    );
    return response.data.map<Location>(Location.fromJson).toSet();
  }
}
