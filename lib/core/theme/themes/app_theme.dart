import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

abstract class AppTheme {
  static var fontFamily = GoogleFonts.poppins().fontFamily;

  ThemeData get theme;

  // TextTheme get textTheme;

  ColorScheme get colorScheme;
}
