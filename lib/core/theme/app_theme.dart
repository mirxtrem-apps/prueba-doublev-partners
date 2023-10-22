import 'package:flutter/material.dart';

import '/core/theme/label_styles.dart';

abstract class AppTheme {
  static get defaultTheme => ThemeMode.dark;

  static ThemeData light() {
    return ThemeData.light(
      useMaterial3: true,
    ).copyWith(
      appBarTheme: _appBarTheme,
      textButtonTheme: _defaultFlatButtonTheme,
      elevatedButtonTheme: _defaultSolidButtonTheme,
      inputDecorationTheme: _defaultInputTheme,
    );
  }

  static ThemeData dark() {
    return ThemeData.dark(
      useMaterial3: true,
    ).copyWith(
      appBarTheme: _appBarTheme,
      textButtonTheme: _defaultFlatButtonTheme,
      elevatedButtonTheme: _defaultSolidButtonTheme,
      inputDecorationTheme: _defaultInputTheme,
    );
  }
}

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

const _appBarTheme = AppBarTheme(elevation: 0);
