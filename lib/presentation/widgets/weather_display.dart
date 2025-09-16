import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:intl/intl.dart';
import 'package:weather_icons/weather_icons.dart';
import '../../core/constants/api_constants.dart';
import '../../domain/entities/weather.dart';

// Main weather display widget showing current conditions
class WeatherDisplay extends StatelessWidget {
  final Weather weather;

  const WeatherDisplay({
    super.key,
    required this.weather,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // City name and country
            Text(
              '${weather.cityName}, ${weather.country}',
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            const SizedBox(height: 8),

            // Current temperature
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  weather.temperature.round().toString(),
                  style: Theme.of(context).textTheme.displayLarge?.copyWith(
                    fontWeight: FontWeight.w300,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Text(
                    '°C',
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                ),
              ],
            ),

            // Weather icon and description
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Weather icon from API
                CachedNetworkImage(
                  imageUrl: ApiConstants.getIconUrl(weather.icon),
                  width: 80,
                  height: 80,
                  placeholder: (context, url) => const CircularProgressIndicator(),
                  errorWidget: (context, url, error) => const Icon(Icons.error),
                ),
                const SizedBox(width: 16),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      weather.description,
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    Text(
                      'Feels like ${weather.feelsLike.round()}°',
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                  ],
                ),
              ],
            ),

            const SizedBox(height: 16),

            // Min/Max temperatures
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _TemperatureItem(
                  icon: Icons.arrow_upward,
                  label: 'High',
                  value: '${weather.tempMax.round()}°',
                ),
                const SizedBox(width: 32),
                _TemperatureItem(
                  icon: Icons.arrow_downward,
                  label: 'Low',
                  value: '${weather.tempMin.round()}°',
                ),
              ],
            ),

            const SizedBox(height: 24),

            // Weather details grid
            GridView.count(
              crossAxisCount: 3,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              childAspectRatio: 1.5,
              children: [
                _WeatherDetailItem(
                  icon: WeatherIcons.humidity,
                  label: 'Humidity',
                  value: '${weather.humidity}%',
                ),
                _WeatherDetailItem(
                  icon: WeatherIcons.strong_wind,
                  label: 'Wind',
                  value: '${weather.windSpeed} m/s',
                ),
                _WeatherDetailItem(
                  icon: WeatherIcons.barometer,
                  label: 'Pressure',
                  value: '${weather.pressure} hPa',
                ),
                _WeatherDetailItem(
                  icon: Icons.visibility,
                  label: 'Visibility',
                  value: '${(weather.visibility / 1000).toStringAsFixed(1)} km',
                ),
                if (weather.rain != null)
                  _WeatherDetailItem(
                    icon: WeatherIcons.rain,
                    label: 'Rain',
                    value: '${weather.rain} mm',
                  ),
                if (weather.snow != null)
                  _WeatherDetailItem(
                    icon: WeatherIcons.snow,
                    label: 'Snow',
                    value: '${weather.snow} mm',
                  ),
              ],
            ),

            const SizedBox(height: 16),

            // Last updated timestamp
            Text(
              'Updated: ${DateFormat('MMM d, h:mm a').format(weather.dateTime)}',
              style: Theme.of(context).textTheme.bodySmall,
            ),
          ],
        ),
      ),
    );
  }
}

// Temperature display helper widget
class _TemperatureItem extends StatelessWidget {
  final IconData icon;
  final String label;
  final String value;

  const _TemperatureItem({
    required this.icon,
    required this.label,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon, size: 20),
        const SizedBox(height: 4),
        Text(
          label,
          style: Theme.of(context).textTheme.bodySmall,
        ),
        Text(
          value,
          style: Theme.of(context).textTheme.titleMedium?.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}

// Weather detail item helper widget
class _WeatherDetailItem extends StatelessWidget {
  final IconData icon;
  final String label;
  final String value;

  const _WeatherDetailItem({
    required this.icon,
    required this.label,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, size: 24),
        const SizedBox(height: 4),
        Text(
          label,
          style: Theme.of(context).textTheme.bodySmall,
        ),
        Text(
          value,
          style: Theme.of(context).textTheme.titleSmall?.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}