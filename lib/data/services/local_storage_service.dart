import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';
import '../../core/constants/app_constants.dart';
import '../../core/errors/exceptions.dart';
import '../../domain/entities/location.dart';

// Service for local data persistence
class LocalStorageService {
  // Save list of locations to SharedPreferences
  Future<void> saveLocations(List<Location> locations) async {
    try {
      final prefs = await SharedPreferences.getInstance();

      // Convert each location to JSON string
      final locationStrings = locations
          .map((location) => jsonEncode({
        'id': location.id,
        'cityName': location.cityName,
        'country': location.country,
        'latitude': location.latitude,
        'longitude': location.longitude,
        'lastUpdated': location.lastUpdated?.toIso8601String(),
      }))
          .toList();

      await prefs.setStringList(AppConstants.storageKey, locationStrings);
    } catch (e) {
      throw CacheException('Failed to save locations');
    }
  }

  // Retrieve saved locations
  Future<List<Location>> getLocations() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final locationStrings = prefs.getStringList(AppConstants.storageKey) ?? [];

      // Convert JSON strings back to Location objects
      return locationStrings.map((string) {
        final json = jsonDecode(string);
        return Location(
          id: json['id'],
          cityName: json['cityName'],
          country: json['country'],
          latitude: json['latitude'],
          longitude: json['longitude'],
          lastUpdated: json['lastUpdated'] != null
              ? DateTime.parse(json['lastUpdated'])
              : null,
        );
      }).toList();
    } catch (e) {
      throw CacheException('Failed to get locations');
    }
  }

  // Save theme preference
  Future<void> saveThemeMode(String themeMode) async {
    try {
      final prefs = await SharedPreferences.getInstance();
      await prefs.setString(AppConstants.themeKey, themeMode);
    } catch (e) {
      throw CacheException('Failed to save theme mode');
    }
  }

  // Get theme preference
  Future<String?> getThemeMode() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      return prefs.getString(AppConstants.themeKey);
    } catch (e) {
      throw CacheException('Failed to get theme mode');
    }
  }
}