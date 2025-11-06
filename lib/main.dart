import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:weather_forecast_app/core/theme/app_theme.dart';
import 'package:weather_forecast_app/presentation/pages/home_page.dart';
import 'package:weather_forecast_app/presentation/providers/theme_providers.dart';

void main() {
  runApp(
    // ProviderScope is the root widget that enables Riverpod throughout the app
    const ProviderScope(
      child: WeatherForecastApp(),
    ),
  );
}

class WeatherForecastApp extends ConsumerWidget {
  const WeatherForecastApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Watch the theme provider to react to theme changes
    final themeMode = ref.watch(themeModeProvider);

    return MaterialApp(
      title: 'WeatherPal',
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,   // From app_theme.dart
      themeMode: themeMode,            // Controlled by Riverpod
      home: const HomePage(),          // Starting page
      debugShowCheckedModeBanner: false,
    );
  }
}