import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../domain/entities/location.dart';
import '../providers/weather_providers.dart';
import '../providers/location_providers.dart';
import '../providers/theme_providers.dart';
import '../widgets/weather_display.dart';
import '../widgets/loading_widget.dart';
import '../widgets/error_widget.dart';
import 'search_page.dart';
import 'detailed_weather_page.dart';

class HomePage extends ConsumerStatefulWidget {
  const HomePage({super.key});

  @override
  ConsumerState<HomePage> createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage> {
  @override
  Widget build(BuildContext context) {
    // Watch providers to react to changes
    final currentLocationWeather = ref.watch(currentLocationWeatherProvider);
    final savedLocations = ref.watch(savedLocationsProvider);
    final themeMode = ref.watch(themeModeProvider);

    return Scaffold(
      body: RefreshIndicator(
        onRefresh: () async {
          // Refresh data when pulled down
          ref.invalidate(currentLocationWeatherProvider);
          await ref.read(savedLocationsProvider.notifier).loadLocations();
        },
        child: CustomScrollView(
          slivers: [
            // App bar with gradient background
            SliverAppBar(
              expandedHeight: 200.0,
              floating: false,
              pinned: true,
              stretch: true,
              actions: [
                // Theme toggle button
                IconButton(
                  icon: Icon(
                    themeMode == ThemeMode.light
                        ? Icons.dark_mode
                        : themeMode == ThemeMode.dark
                        ? Icons.light_mode
                        : Icons.auto_mode,
                  ),
                  onPressed: () => _showThemeDialog(),
                ),
                // Search button
                IconButton(
                  icon: const Icon(Icons.search),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SearchPage(),
                      ),
                    );
                  },
                ),
              ],
              flexibleSpace: FlexibleSpaceBar(
                title: const Text('Weather Forecast'),
                background: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Theme.of(context).colorScheme.primary.withOpacity(0.7),
                        Theme.of(context).colorScheme.primary,
                      ],
                    ),
                  ),
                ),
              ),
            ),

            // Current location weather section
            currentLocationWeather.when(
              data: (weather) => SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Location indicator
                      Row(
                        children: [
                          Icon(
                            Icons.my_location,
                            size: 20,
                            color: Theme.of(context).colorScheme.primary,
                          ),
                          const SizedBox(width: 8),
                          Text(
                            'Current Location',
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                        ],
                      ),
                      const SizedBox(height: 8),
                      WeatherDisplay(weather: weather),
                    ],
                  ),
                ),
              ),
              loading: () => const SliverToBoxAdapter(
                child: LoadingWidget(height: 200),
              ),
              error: (error, stack) => SliverToBoxAdapter(
                child: ErrorDisplay(
                  message: error.toString(),
                  onRetry: () => ref.invalidate(currentLocationWeatherProvider),
                ),
              ),
            ),

            // Saved locations section
            savedLocations.when(
              data: (locations) {
                if (locations.isEmpty) {
                  // Empty state
                  return SliverToBoxAdapter(
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Card(
                        child: Padding(
                          padding: const EdgeInsets.all(24.0),
                          child: Column(
                            children: [
                              Icon(
                                Icons.add_location_alt,
                                size: 48,
                                color: Theme.of(context).colorScheme.primary,
                              ),
                              const SizedBox(height: 16),
                              Text(
                                'No saved locations',
                                style: Theme.of(context).textTheme.titleMedium,
                              ),
                              const SizedBox(height: 8),
                              Text(
                                'Search and add your favorite cities',
                                style: Theme.of(context).textTheme.bodyMedium,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                }

                // List of saved locations
                return SliverPadding(
                  padding: const EdgeInsets.all(16.0),
                  sliver: SliverList(
                    delegate: SliverChildBuilderDelegate(
                          (context, index) {
                        final location = locations[index];
                        return Padding(
                          padding: const EdgeInsets.only(bottom: 12.0),
                          child: _SavedLocationCard(location: location),
                        );
                      },
                      childCount: locations.length,
                    ),
                  ),
                );
              },
              loading: () => const SliverToBoxAdapter(
                child: LoadingWidget(height: 100),
              ),
              error: (error, stack) => SliverToBoxAdapter(
                child: ErrorDisplay(
                  message: 'Failed to load saved locations',
                  onRetry: () => ref
                      .read(savedLocationsProvider.notifier)
                      .loadLocations(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Show theme selection dialog
  void _showThemeDialog() {
    final currentTheme = ref.read(themeModeProvider);

    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Choose Theme'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            RadioListTile<ThemeMode>(
              title: const Text('System'),
              value: ThemeMode.system,
              groupValue: currentTheme,
              onChanged: (value) {
                if (value != null) {
                  ref.read(themeModeProvider.notifier).setThemeMode(value);
                  Navigator.of(context).pop();
                }
              },
            ),
            RadioListTile<ThemeMode>(
              title: const Text('Light'),
              value: ThemeMode.light,
              groupValue: currentTheme,
              onChanged: (value) {
                if (value != null) {
                  ref.read(themeModeProvider.notifier).setThemeMode(value);
                  Navigator.of(context).pop();
                }
              },
            ),
            RadioListTile<ThemeMode>(
              title: const Text('Dark'),
              value: ThemeMode.dark,
              groupValue: currentTheme,
              onChanged: (value) {
                if (value != null) {
                  ref.read(themeModeProvider.notifier).setThemeMode(value);
                  Navigator.of(context).pop();
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}

// Saved location card widget
class _SavedLocationCard extends ConsumerWidget {
  final Location location;

  const _SavedLocationCard({required this.location});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Watch weather for this location
    final weatherProvider = currentWeatherProvider(location);
    final weather = ref.watch(weatherProvider);

    return Card(
      child: InkWell(
        onTap: () {
          // Navigate to detailed view
          ref.read(selectedLocationProvider.notifier).state = location;
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => DetailedWeatherPage(location: location),
            ),
          );
        },
        borderRadius: BorderRadius.circular(16),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: weather.when(
            data: (weather) => Row(
              children: [
                // City info
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        weather.cityName,
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                      Text(
                        weather.description,
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                    ],
                  ),
                ),
                // Temperature info
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      '${weather.temperature.round()}°',
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                    Row(
                      children: [
                        Text(
                          'H: ${weather.tempMax.round()}°',
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                        const SizedBox(width: 8),
                        Text(
                          'L: ${weather.tempMin.round()}°',
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                      ],
                    ),
                  ],
                ),
                // Delete button
                IconButton(
                  icon: const Icon(Icons.delete_outline),
                  onPressed: () => _deleteLocation(context, ref),
                ),
              ],
            ),
            loading: () => const Center(
              child: CircularProgressIndicator(),
            ),
            error: (error, stack) => Text(
              'Failed to load weather',
              style: TextStyle(color: Theme.of(context).colorScheme.error),
            ),
          ),
        ),
      ),
    );
  }

  // Delete location with confirmation
  Future<void> _deleteLocation(BuildContext context, WidgetRef ref) async {
    final shouldDelete = await showDialog<bool>(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Remove Location'),
        content: Text(
          'Remove ${location.cityName} from saved locations?',
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(false),
            child: const Text('Cancel'),
          ),
          TextButton(
            onPressed: () => Navigator.of(context).pop(true),
            child: const Text('Remove'),
          ),
        ],
      ),
    );

    if (shouldDelete == true) {
      try {
        await ref
            .read(savedLocationsProvider.notifier)
            .deleteLocation(location.id);
      } catch (e) {
        if (context.mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text('Failed to remove location: $e'),
            ),
          );
        }
      }
    }
  }
}