import 'package:flutter/material.dart';
import 'package:flutter_tdd/core/theme/label_styles.dart';

abstract class AppTheme {
  static get defaultTheme => ThemeMode.dark;

  static ThemeData light() {
    return ThemeData.light(
      useMaterial3: true,
    ).copyWith(
      inputDecorationTheme: InputDecorationTheme(
        isDense: true,
        labelStyle: LabelStyle.label(),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0)
        ),
      ),
    );
  }

  static ThemeData dark() {
    return ThemeData.dark(
      useMaterial3: true,
    ).copyWith(
      inputDecorationTheme: InputDecorationTheme(
        isDense: true,
        labelStyle: LabelStyle.label(),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0)
        ),
      ),
    );
  }
}
