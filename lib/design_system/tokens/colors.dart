import 'package:flutter/material.dart';

/// Design System Colors
class DSColors {
  // Private constructor to prevent instantiation
  const DSColors._();

  // Primary color from Figma (#00AA13)
  static const Color primary = Color(0xFF00AA13);

  // Primary color swatch with different shades
  static const MaterialColor primarySwatch = MaterialColor(
    0xFF00AA13, // Primary color value
    <int, Color>{
      50: Color(0xFFE0F5E1), // Lightest
      100: Color(0xFFB3E6B5),
      200: Color(0xFF80D684),
      300: Color(0xFF4DC652),
      400: Color(0xFF26B82D),
      500: Color(0xFF00AA13), // Primary
      600: Color(0xFF00A311),
      700: Color(0xFF00990E),
      800: Color(0xFF00900B),
      900: Color(0xFF007F06), // Darkest
    },
  );

  // Helper method to get primary color with opacity
  static Color primaryWithOpacity(double opacity) {
    return primary.withOpacity(opacity);
  }
}
