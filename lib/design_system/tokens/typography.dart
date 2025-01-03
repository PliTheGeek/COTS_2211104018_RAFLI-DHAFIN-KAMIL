import 'package:flutter/material.dart';

class DSTypography {
  const DSTypography._();

  // Font Family
  static const String fontFamily = 'SF Pro';

  // Font Weights
  static const FontWeight regular = FontWeight.w400;
  static const FontWeight semiBold = FontWeight.w600;

  // Headings
  static const TextStyle h1 = TextStyle(
    fontFamily: fontFamily,
    fontSize: 30,
    fontWeight: semiBold,
    height: 1.2,
  );

  static const TextStyle h2 = TextStyle(
    fontFamily: fontFamily,
    fontSize: 24,
    fontWeight: semiBold,
    height: 1.2,
  );

  static const TextStyle h3 = TextStyle(
    fontFamily: fontFamily,
    fontSize: 18,
    fontWeight: semiBold,
    height: 1.2,
  );

  static const TextStyle h4 = TextStyle(
    fontFamily: fontFamily,
    fontSize: 16,
    fontWeight: semiBold,
    height: 1.2,
  );

  static const TextStyle h5 = TextStyle(
    fontFamily: fontFamily,
    fontSize: 14,
    fontWeight: semiBold,
    height: 1.2,
  );

  static const TextStyle h6 = TextStyle(
    fontFamily: fontFamily,
    fontSize: 14,
    fontWeight: regular,
    height: 1.2,
  );

  static const TextStyle h7 = TextStyle(
    fontFamily: fontFamily,
    fontSize: 12,
    fontWeight: semiBold,
    height: 1.2,
  );

  // Add body styles
  static const TextStyle bodyLarge = TextStyle(
    fontFamily: fontFamily,
    fontSize: 16,
    fontWeight: regular,
    height: 1.5,
  );

  // Theme Configuration
  static TextTheme get textTheme {
    return const TextTheme(
      displayLarge: h1,
      displayMedium: h2,
      displaySmall: h3,
      headlineLarge: h4,
      headlineMedium: h5,
      headlineSmall: h6,
      titleLarge: h7,
    );
  }
}
