import 'package:injectable/injectable.dart';
import 'package:myoro_matchup/myoro_matchup.dart';

/// Repository for getting locations using the Nominatim API.
///
/// This repository searches for specific places (POIs - Points of Interest) such as
/// sports centers, gyms, community centers, and other named locations rather than
/// generic administrative boundaries like cities, states, or countries.
///
/// The search is optimized for finding places like "YMCA", "Sports Center", etc.
/// by using query parameters that prioritize place data over administrative boundaries.
@injectable
final class LocationRepository {
  /// Default constructor.
  const LocationRepository(this._httpClient);

  /// [HttpClient] to make the requests.
  final HttpClient _httpClient;

  /// Gets all [Location]s matching the search query.
  ///
  /// Searches for specific places (POIs) using the Nominatim Search API.
  /// The query should target named places like "YMCA", "Sports Center", etc.
  ///
  /// [query] - The search term (e.g., "YMCA", "Sports Center in New York")
  ///
  /// Returns a [Set] of [Location] objects matching the query.
  Future<Set<Location>> select(String query) async {
    final response = await _httpClient.get<List<Map<String, dynamic>>>(
      '/search',
      queryParameters: {
        // Output format: 'json' returns results in JSON format (other options: xml, jsonv2, geojson, geocodejson)
        'format': 'json',

        // Address details: '1' includes a breakdown of the address into components (street, city, state, country, etc.)
        // This is essential for extracting city and country information for the Location model.
        'addressdetails': '1',

        // Extra tags: '1' includes additional metadata about the place such as amenity types, opening hours,
        // Wikipedia links, and other OSM tags. Critical for identifying POIs vs administrative boundaries.
        'extratags': '1',

        // Named details: '1' includes alternative names and language variants for the place.
        // Useful for places that may have multiple names or translations.
        'namedetails': '1',

        // Limit: Maximum number of results to return (default is 10, max is 50).
        // Set to 25 to get more place results while staying within reasonable bounds.
        'limit': '25',

        // Dedupe: '1' attempts to detect and remove duplicate results (default is 1).
        // Explicitly set to avoid duplicate places that may appear in different formats.
        'dedupe': '1',

        // Query: The free-form search string. This is the main search parameter.
        // For places, include specific names like "YMCA" or "Sports Center" along with optional location hints.
        'q': query,
      },
      baseUrl: 'https://nominatim.openstreetmap.org',
    );
    return response.data.map<Location>(Location.fromJson).toSet();
  }
}
