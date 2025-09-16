import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../data/repositories/weather_repository.dart';
import '../../domain/entities/location.dart';
import 'service_providers.dart';

// StateNotifier for managing saved locations list
class SavedLocationsNotifier extends StateNotifier<AsyncValue<List<Location>>> {
  final WeatherRepository _repository;

  SavedLocationsNotifier(this._repository) : super(const AsyncValue.loading()) {
    loadLocations();  // Load on initialization
  }

  // Load locations from storage
  Future<void> loadLocations() async {
    state = const AsyncValue.loading();

    final result = await _repository.getSavedLocations();

    state = result.fold(
          (failure) => AsyncValue.error(failure.message, StackTrace.current),
          (locations) => AsyncValue.data(locations),
    );
  }

  // Add new location
  Future<void> addLocation(Location location) async {
    final currentLocations = state.value ?? [];

    // Check if already exists
    if (currentLocations.any((l) => l.id == location.id)) {
      return;
    }

    // Check max limit
    if (currentLocations.length >= 5) {
      throw Exception('Maximum saved locations reached');
    }

    final result = await _repository.saveLocation(location);

    result.fold(
          (failure) => throw Exception(failure.message),
          (_) => loadLocations(),  // Reload list after adding
    );
  }

  // Delete location
  Future<void> deleteLocation(String locationId) async {
    final result = await _repository.deleteLocation(locationId);

    result.fold(
          (failure) => throw Exception(failure.message),
          (_) => loadLocations(),  // Reload list after deleting
    );
  }
}

// Provider for saved locations
final savedLocationsProvider =
StateNotifierProvider<SavedLocationsNotifier, AsyncValue<List<Location>>>(
      (ref) => SavedLocationsNotifier(ref.watch(weatherRepositoryProvider)),
);

// Selected location provider (for navigation)
final selectedLocationProvider = StateProvider<Location?>((ref) => null);