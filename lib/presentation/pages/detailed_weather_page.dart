import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../domain/entities/location.dart';
import '../providers/weather_providers.dart';
import '../widgets/weather_display.dart';
import '../widgets/forecast_list.dart';
import '../widgets/loading_widget.dart';
import '../widgets/error_widget.dart';

// Shows detailed weather and forecast for a location
class DetailedWeatherPage extends ConsumerWidget {
  final Location location;

  const DetailedWeatherPage({
    super.key,
    required this.location,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Watch weather and forecast data
    final weatherAsync = ref.watch(currentWeatherProvider(location));
    final forecastAsync = ref.watch(forecastProvider(location));

    return Scaffold(
      body: RefreshIndicator(
        onRefresh: () async {
          // Refresh both weather and forecast
          ref.invalidate(currentWeatherProvider(location));
          ref.invalidate(forecastProvider(location));
        },
        child: CustomScrollView(
          slivers: [
            // Expandable app bar with weather preview
            SliverAppBar(
              expandedHeight: 200.0,
              floating: false,
              pinned: false,
              stretch: true,
              flexibleSpace: FlexibleSpaceBar(
                title: Text(location.cityName),
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
                  child: weatherAsync.maybeWhen(
                    data: (weather) => Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                         // const SizedBox(height: 15),
                          // Large temperature display
                          Text(
                            '${weather.temperature.round()}°',
                            style: const TextStyle(
                              fontSize: 60,
                              fontWeight: FontWeight.w200,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            weather.description,
                            style: const TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                    orElse: () => const SizedBox.shrink(),
                  ),
                ),
              ),
            ),

            // Current weather details
            weatherAsync.when(
              data: (weather) => SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: WeatherDisplay(weather: weather),
                ),
              ),
              loading: () => const SliverToBoxAdapter(
                child: LoadingWidget(height: 300),
              ),
              error: (error, stack) => SliverToBoxAdapter(
                child: ErrorDisplay(
                  message: 'Failed to load weather data',
                  onRetry: () => ref.invalidate(currentWeatherProvider(location)),
                ),
              ),
            ),

            // 5-day forecast
            forecastAsync.when(
              data: (forecast) => SliverToBoxAdapter(
                child: ForecastList(forecast: forecast),
              ),
              loading: () => const SliverToBoxAdapter(
                child: Padding(
                  padding: EdgeInsets.all(16.0),
                  child: LoadingWidget(height: 200),
                ),
              ),
              error: (error, stack) => SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: ErrorDisplay(
                    message: 'Failed to load forecast',
                    onRetry: () => ref.invalidate(forecastProvider(location)),
                  ),
                ),
              ),
            ),

            // Bottom padding
            const SliverToBoxAdapter(
              child: SizedBox(height: 24),
            ),
          ],
        ),
      ),
    );
  }
}