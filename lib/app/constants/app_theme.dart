import 'package:flutter/material.dart';
import 'package:tech_taste/app/constants/color_theme.dart';

abstract class AppTheme {
  static ThemeData appTheme = ThemeData.dark().copyWith(
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        foregroundColor:const WidgetStatePropertyAll(Colors.black),
        backgroundColor: WidgetStateColor.resolveWith((states) {
          if (states.contains(WidgetState.disabled)) {
            return Colors.grey;
          } else if (states.contains(WidgetState.pressed)) {
            return ColorTheme.main_color;
          }
          return ColorTheme.main_color;
        }),
      ),
    ),
  );
}
