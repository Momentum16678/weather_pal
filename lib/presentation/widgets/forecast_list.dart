import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:cached_network_image/cached_network_image.dart';
import '../../core/constants/api_constants.dart';
import '../../domain/entities/forecast.dart';
import '../../domain/entities/weather.dart';

// Displays 5-day weather forecast
class ForecastList extends StatelessWidget {
  final Forecast forecast;

  const ForecastList({
    super.key,
    required this.forecast,
  });

  @override
  Widget build(BuildContext context) {
    // Group forecasts by day
    final groupedForecasts = _groupForecastsByDay(forecast.hourlyForecasts);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
          child: Text(
            '5-Day Forecast',
            style: Theme.of(context).textTheme.titleLarge,
          ),
        ),
        // Create a card for each day
        ...groupedForecasts.entries.map((entry) => _DayForecastCard(
          date: entry.key,
          forecasts: entry.value,
        )),
      ],
    );
  }

  // Group hourly forecasts by day
  Map<DateTime, List<Weather>> _groupForecastsByDay(List<Weather> forecasts) {
    final grouped = <DateTime, List<Weather>>{};

    for (final forecast in forecasts) {
      // Normalize to start of day
      final date = DateTime(
        forecast.dateTime.year,
        forecast.dateTime.month,
        forecast.dateTime.day,
      );

      grouped.putIfAbsent(date, () => []).add(forecast);
    }

    return grouped;
  }
}

// Expandable card showing daily forecast
class _DayForecastCard extends StatefulWidget {
  final DateTime date;
  final List<Weather> forecasts;

  const _DayForecastCard({
    required this.date,
    required this.forecasts,
  });

  @override
  State<_DayForecastCard> createState() => _DayForecastCardState();
}

class _DayForecastCardState extends State<_DayForecastCard> {
  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    // Calculate daily summary
    final avgTemp = widget.forecasts
        .map((f) => f.temperature)
        .reduce((a, b) => a + b) / widget.forecasts.length;

    final maxTemp = widget.forecasts
        .map((f) => f.tempMax)
        .reduce((a, b) => a > b ? a : b);

    final minTemp = widget.forecasts
        .map((f) => f.tempMin)
        .reduce((a, b) => a < b ? a : b);

    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 4.0),
      child: Theme(
        data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
        child: ExpansionTile(
          tilePadding: const EdgeInsets.all(16.0),
          onExpansionChanged: (expanded) {
            setState(() {
              _isExpanded = expanded;
            });
          },
          // Weather icon for the day
          leading: CachedNetworkImage(
            imageUrl: ApiConstants.getIconUrl(widget.forecasts.first.icon),
            width: 48,
            height: 48,
          ),
          // Day and date
          title: Text(
            DateFormat('EEEE, MMM d').format(widget.date),
            style: Theme.of(context).textTheme.titleMedium,
          ),
          // Weather description
          subtitle: Text(
            widget.forecasts.first.description,
            style: Theme.of(context).textTheme.bodySmall,
          ),
          // Temperature summary
          trailing: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '${avgTemp.round()}°',
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  Text(
                    '${minTemp.round()}° / ${maxTemp.round()}°',
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                ],
              ),
              Icon(_isExpanded ? Icons.expand_less : Icons.expand_more),
            ],
          ),
          // Hourly forecast when expanded
          children: [
            const Divider(),
            SizedBox(
              height: 120,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                itemCount: widget.forecasts.length,
                itemBuilder: (context, index) {
                  final forecast = widget.forecasts[index];
                  return _HourlyForecastItem(forecast: forecast);
                },
              ),
            ),
            const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}

// Individual hourly forecast item
class _HourlyForecastItem extends StatelessWidget {
  final Weather forecast;

  const _HourlyForecastItem({required this.forecast});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      margin: const EdgeInsets.only(right: 12),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Time
          Text(
            DateFormat('h a').format(forecast.dateTime),
            style: Theme.of(context).textTheme.bodySmall,
          ),
          const SizedBox(height: 8),
          // Weather icon
          CachedNetworkImage(
            imageUrl: ApiConstants.getIconUrl(forecast.icon),
            width: 40,
            height: 40,
          ),
          const SizedBox(height: 8),
          // Temperature
          Text(
            '${forecast.temperature.round()}°',
            style: Theme.of(context).textTheme.titleMedium,
          ),
          // Rain amount if any
          if (forecast.rain != null)
            Text(
              '${forecast.rain}mm',
              style: Theme.of(context).textTheme.bodySmall?.copyWith(
                color: Colors.blue,
              ),
            ),
        ],
      ),
    );
  }
}