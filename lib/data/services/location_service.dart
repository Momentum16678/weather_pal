// lib/src/data/services/location_service.dart
import 'package:geolocator/geolocator.dart';
import 'package:geocoding/geocoding.dart' as geocoding;
import '../../core/errors/exceptions.dart';

// Service for handling device location
class LocationService {
  // Get current GPS position
  Future<Position> getCurrentLocation() async {
    print("🔍 Starting location check...");

    // Check if location services are enabled
    bool serviceEnabled = await Geolocator.isLocationServiceEnabled();
    print("📍 Location services enabled: $serviceEnabled");

    if (!serviceEnabled) {
      print("❌ Location services are disabled");
      throw LocationException('Location services are disabled. Please enable location in your device settings.');
    }

    // Check permissions
    LocationPermission permission = await Geolocator.checkPermission();
    print("🔐 Current permission: $permission");

    if (permission == LocationPermission.denied) {
      print("🔐 Requesting location permission...");
      permission = await Geolocator.requestPermission();
      print("🔐 Permission after request: $permission");

      if (permission == LocationPermission.denied) {
        throw LocationException('Location permissions are denied. Please grant location access in app settings.');
      }
    }

    if (permission == LocationPermission.deniedForever) {
      throw LocationException('Location permissions are permanently denied. Please go to app settings and enable location access.');
    }

    // Get position
    try {
      print("📍 Getting current position...");
      final position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.medium,
        timeLimit: const Duration(seconds: 30), // Increased timeout
      );
      print("✅ Position obtained: ${position.latitude}, ${position.longitude}");
      return position;
    } catch (e) {
      print("❌ Failed to get position: $e");
      throw LocationException('Failed to get current location: ${e.toString()}');
    }
  }

  // Convert coordinates to city name (reverse geocoding)
  Future<String> getCityNameFromCoordinates({
    required double latitude,
    required double longitude,
  }) async {
    try {
      final placemarks = await geocoding.placemarkFromCoordinates(
        latitude,
        longitude,
      );

      if (placemarks.isNotEmpty) {
        final placemark = placemarks.first;
        return placemark.locality ??
            placemark.subLocality ??
            placemark.administrativeArea ??
            'Unknown Location';
      }

      return 'Unknown Location';
    } catch (e) {
      throw LocationException('Failed to get city name');
    }
  }
}
