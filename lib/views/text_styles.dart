// lib/styles.dart

import 'package:flutter/material.dart';

// Define text styles
class AppTextStyles {
  // Regular TextStyle
  static const TextStyle bodyText = TextStyle(
    fontSize: 16.0,
    fontWeight: FontWeight.normal,
    color: Colors.black,
  );

  // Heading TextStyle
  static const TextStyle headingText = TextStyle(
    fontSize: 21.0,
    fontWeight: FontWeight.bold,
    color: Color(0xFF2D2E74),
  );

  // Subtitle TextStyle
  static const TextStyle subtitleText = TextStyle(
    fontSize: 18.0,
    fontWeight: FontWeight.w500,
    color: Colors.grey,
  );

  // Error TextStyle
  static const TextStyle errorText = TextStyle(
    fontSize: 14.0,
    fontWeight: FontWeight.normal,
    color: Colors.red,
  );

  // Customizable TextStyle (for example, you can provide color dynamically)
  static TextStyle customTextStyle({
    required double fontSize,
    required FontWeight fontWeight,
    required Color color,
  }) {
    return TextStyle(
      fontSize: fontSize,
      fontWeight: fontWeight,
      color: color,
    );
  }
}
