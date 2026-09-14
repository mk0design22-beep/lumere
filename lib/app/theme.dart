import 'package:flutter/material.dart';

class AppTheme {
  static const Color ivory = Color(0xFFF8F6F1);
  static const Color charcoal = Color(0xFF171717);
  static const Color softBlack = Color(0xFF242424);
  static const Color gold = Color(0xFFB79A63);
  static const Color muted = Color(0xFF8A857D);
  static const Color white = Color(0xFFFFFFFF);
  static const Color error = Color(0xFFB42318);
  static const Color success = Color(0xFF26734D);

  static ThemeData get lightTheme {
    return ThemeData(
      useMaterial3: true,
      primaryColor: charcoal,
      scaffoldBackgroundColor: ivory,
      colorScheme: const ColorScheme.light(
        primary: charcoal,
        secondary: gold,
        surface: ivory,
        error: error,
        onPrimary: white,
        onSecondary: white,
        onSurface: softBlack,
        onError: white,
      ),
      appBarTheme: const AppBarTheme(
        backgroundColor: ivory,
        elevation: 0,
        centerTitle: true,
        iconTheme: IconThemeData(color: charcoal),
        titleTextStyle: TextStyle(
          color: charcoal,
          fontSize: 20,
          fontWeight: FontWeight.w600,
        ),
      ),
      textTheme: const TextTheme(
        displayLarge: TextStyle(color: charcoal, fontSize: 32, fontWeight: FontWeight.bold),
        headlineMedium: TextStyle(color: charcoal, fontSize: 24, fontWeight: FontWeight.bold),
        titleLarge: TextStyle(color: charcoal, fontSize: 20, fontWeight: FontWeight.w600),
        bodyLarge: TextStyle(color: charcoal, fontSize: 16),
        bodyMedium: TextStyle(color: softBlack, fontSize: 14),
        bodySmall: TextStyle(color: muted, fontSize: 12),
      ),
      cardTheme: CardTheme(
        color: white,
        elevation: 2,
        shadowColor: charcoal.withOpacity(0.05),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        margin: EdgeInsets.zero,
      ),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: white,
        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide.none,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide.none,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: gold, width: 1),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: error, width: 1),
        ),
        labelStyle: const TextStyle(color: muted),
        hintStyle: const TextStyle(color: muted),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: charcoal,
          foregroundColor: white,
          elevation: 0,
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          textStyle: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        backgroundColor: white,
        selectedItemColor: charcoal,
        unselectedItemColor: muted,
        showUnselectedLabels: true,
        type: BottomNavigationBarType.fixed,
        elevation: 10,
      ),
    );
  }
}
