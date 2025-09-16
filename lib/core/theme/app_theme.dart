import 'package:flutter/material.dart';

class AppTheme {
  // Light theme configuration
  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    colorScheme: ColorScheme.light(
      primary: Colors.blue.shade600,
      secondary: Colors.orange.shade400,
      surface: Colors.grey.shade50,
      background: Colors.white,
      error: Colors.red.shade400,
    ),
    fontFamily: 'Poppins',  // Optional: Remove if not using custom fonts
    appBarTheme: AppBarTheme(
      elevation: 0,
      centerTitle: true,
      backgroundColor: Colors.transparent,
      foregroundColor: Colors.blue.shade900,
    ),
    cardTheme: CardTheme(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
    ),
  );

  // Dark theme configuration
  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    colorScheme: ColorScheme.dark(
      primary: Colors.blue.shade400,
      secondary: Colors.orange.shade400,
      surface: Colors.grey.shade900,
      background: Colors.black,
      error: Colors.red.shade400,
    ),
    fontFamily: 'Poppins',  // Optional: Remove if not using custom fonts
    appBarTheme: AppBarTheme(
      elevation: 0,
      centerTitle: true,
      backgroundColor: Colors.transparent,
      foregroundColor: Colors.white,
    ),
    cardTheme: CardTheme(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
    ),
  );
}