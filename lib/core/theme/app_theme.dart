import 'package:flutter/material.dart';
import 'package:vibetask/core/theme/app_palette.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: AppPalette.backgroundColor,
  );

  // sign up page color
  static ThemeData signUpTheme = ThemeData(
    scaffoldBackgroundColor: const Color.fromRGBO(236, 240, 243, 1),
  );
}
