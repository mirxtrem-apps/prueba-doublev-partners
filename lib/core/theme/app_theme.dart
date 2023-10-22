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
final _defaultFlatButtonTheme = TextButtonThemeData(
  style: ButtonStyle(
    visualDensity: VisualDensity.adaptivePlatformDensity,
    shape: MaterialStatePropertyAll(
      RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
      ),
    ),
    enableFeedback: false,
    splashFactory: NoSplash.splashFactory,
  ),
);
final _defaultInputTheme = InputDecorationTheme(
  isDense: true,
  labelStyle: LabelStyle.label(),
  border: OutlineInputBorder(borderRadius: BorderRadius.circular(8.0)),
);

abstract class AppTheme {
  static get defaultTheme => ThemeMode.light;

  static ThemeData light() {
    return ThemeData.light(
      useMaterial3: true,
    ).copyWith(
      textButtonTheme: _defaultFlatButtonTheme,
      elevatedButtonTheme: _defaultSolidButtonTheme,
      inputDecorationTheme: _defaultInputTheme,
    );
  }

  static ThemeData dark() {
    return ThemeData.dark(
      useMaterial3: true,
    ).copyWith(
      textButtonTheme: _defaultFlatButtonTheme,
      elevatedButtonTheme: _defaultSolidButtonTheme,
      inputDecorationTheme: _defaultInputTheme,
    );
  }
}
