import 'package:flutter/material.dart';
import 'package:flutter_tdd/core/theme/label_styles.dart';

final _defaultSolidButtonTheme = ElevatedButtonThemeData(
  style: ButtonStyle(
    visualDensity: VisualDensity.adaptivePlatformDensity,
    shape: MaterialStatePropertyAll(
      RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
      ),
    ),
  ),
);
final _defaultInputTheme = InputDecorationTheme(
  isDense: true,
  labelStyle: LabelStyle.label(),
  border: OutlineInputBorder(borderRadius: BorderRadius.circular(8.0)),
);

abstract class AppTheme {
  static get defaultTheme => ThemeMode.dark;

  static ThemeData light() {
    return ThemeData.light(
      useMaterial3: true,
    ).copyWith(
      elevatedButtonTheme: _defaultSolidButtonTheme,
      inputDecorationTheme: _defaultInputTheme,
    );
  }

  static ThemeData dark() {
    return ThemeData.dark(
      useMaterial3: true,
    ).copyWith(
      elevatedButtonTheme: _defaultSolidButtonTheme,
      inputDecorationTheme: _defaultInputTheme,
    );
  }
}
