import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../domain/entities/location.dart';
import '../../domain/entities/weather.dart';
import '../providers/weather_providers.dart';
import '../providers/location_providers.dart';
import '../providers/search_providers.dart';
import '../widgets/loading_widget.dart';
import '../widgets/error_widget.dart';
import '../widgets/weather_display.dart';
import 'detailed_weather_page.dart';

class SearchPage extends ConsumerStatefulWidget {
  const SearchPage({super.key});

  @override
  ConsumerState<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends ConsumerState<SearchPage> {
  final _searchController = TextEditingController();
  final _focusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    // Clear previous search when opening page
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(searchQueryProvider.notifier).state = '';
    });
  }

  @override
  void dispose() {
    _searchController.dispose();
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // Watch search state
    final searchQuery = ref.watch(searchQueryProvider);
    final isSearching = ref.watch(isSearchingProvider);

    return Scaffold(
      appBar: AppBar(
        title: TextField(
          controller: _searchController,
          focusNode: _focusNode,
          autofocus: true,
          decoration: const InputDecoration(
            hintText: 'Search city...',
            border: InputBorder.none,
          ),
          onSubmitted: _performSearch,
        ),
        actions: [
          if (_searchController.text.isNotEmpty)
            IconButton(
              icon: const Icon(Icons.clear),
              onPressed: () {
                _searchController.clear();
                ref.read(searchQueryProvider.notifier).state = '';
              },
            ),
        ],
      ),
      body: Column(
        children: [
          // Loading indicator
          if (isSearching) const LinearProgressIndicator(),

          // Content
          Expanded(
            child: searchQuery.isEmpty
                ? _buildSuggestions()
                : _buildSearchResults(searchQuery),
          ),
        ],
      ),
    );
  }

  // Show city suggestions when search is empty
  Widget _buildSuggestions() {
    final suggestions = [
      'London',
      'New York',
      'Tokyo',
      'Paris',
      'Sydney',
      'Dubai',
      'Singapore',
      'Hong Kong',
      'Berlin',
      'Mumbai',
    ];

    return ListView.builder(
      padding: const EdgeInsets.all(16.0),
      itemCount: suggestions.length,
      itemBuilder: (context, index) {
        final city = suggestions[index];
        return ListTile(
          leading: const Icon(Icons.location_city),
          title: Text(city),
          onTap: () {
            _searchController.text = city;
            _performSearch(city);
          },
        );
      },
    );
  }

  // Show search results
  Widget _buildSearchResults(String searchQuery) {
    final weatherAsync = ref.watch(weatherByCityNameProvider(searchQuery));

    return weatherAsync.when(
      data: (weather) => SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Weather display
            WeatherDisplay(weather: weather),
            const SizedBox(height: 24),

            // Action buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                FilledButton.icon(
                  onPressed: () => _saveLocation(weather),
                  icon: const Icon(Icons.add),
                  label: const Text('Save Location'),
                ),
                OutlinedButton.icon(
                  onPressed: () {
                    // Create location object for navigation
                    final location = Location(
                      id: '${weather.cityName}-${DateTime.now().millisecondsSinceEpoch}',
                      cityName: weather.cityName,
                      country: weather.country,
                      latitude: 0, // Note: We'd need coords from API
                      longitude: 0, // This is a limitation of city search
                    );

                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailedWeatherPage(location: location),
                      ),
                    );
                  },
                  icon: const Icon(Icons.info_outline),
                  label: const Text('View Details'),
                ),
              ],
            ),
          ],
        ),
      ),
      loading: () => const LoadingWidget(),
      error: (error, stack) => ErrorDisplay(
        message: error.toString().contains('city not found')
            ? 'City not found. Please check the spelling and try again.'
            : 'Failed to fetch weather data',
        onRetry: () => _performSearch(_searchController.text),
      ),
    );
  }

  // Perform search
  void _performSearch(String query) {
    if (query.trim().isEmpty) return;

    ref.read(searchQueryProvider.notifier).state = query.trim();
    ref.read(isSearchingProvider.notifier).state = true;

    // Hide loading after delay
    Future.delayed(const Duration(seconds: 1), () {
      ref.read(isSearchingProvider.notifier).state = false;
    });
  }

  // Save location to favorites
  Future<void> _saveLocation(Weather weather) async {
    try {
      final savedLocations = ref.read(savedLocationsProvider).value ?? [];

      if (savedLocations.any((l) => l.cityName == weather.cityName)) {
        if (mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('Location already saved')),
          );
        }
        return;
      }

      // For now, use placeholder coordinates since city search doesn't return them
      // In a real app, you'd need to geocode the city name to get coordinates
      final location = Location(
        id: '${weather.cityName}-${DateTime.now().millisecondsSinceEpoch}',
        cityName: weather.cityName,
        country: weather.country,
        latitude: 40.7128, // Default to NYC coordinates for now
        longitude: -74.0060, // Better than 0,0 which returns "Globe"
        lastUpdated: DateTime.now(),
      );

      await ref.read(savedLocationsProvider.notifier).addLocation(location);

      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('${weather.cityName} saved successfully')),
        );
      }
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Failed to save location: $e')),
        );
      }
    }
  }
}