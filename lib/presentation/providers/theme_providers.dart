import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../data/services/local_storage_service.dart';
import 'service_providers.dart';

// StateNotifier for theme management
class ThemeModeNotifier extends StateNotifier<ThemeMode> {
  final LocalStorageService _localStorageService;

  ThemeModeNotifier(this._localStorageService) : super(ThemeMode.system) {
    _loadThemeMode();  // Load saved theme on initialization
  }

  // Load theme from storage
  Future<void> _loadThemeMode() async {
    try {
      final savedTheme = await _localStorageService.getThemeMode();
      if (savedTheme != null) {
        state = ThemeMode.values.firstWhere(
              (mode) => mode.name == savedTheme,
          orElse: () => ThemeMode.system,
        );
      }
    } catch (_) {
      // Keep default system theme if error
    }
  }

  // Change theme and save
  Future<void> setThemeMode(ThemeMode mode) async {
    state = mode;  // Update state immediately
    try {
      await _localStorageService.saveThemeMode(mode.name);
    } catch (_) {
      // Handle error silently
    }
  }
}

// Theme provider
final themeModeProvider = StateNotifierProvider<ThemeModeNotifier, ThemeMode>(
      (ref) => ThemeModeNotifier(ref.watch(localStorageServiceProvider)),
);
