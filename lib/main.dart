import 'package:flutter/material.dart';
import 'package:flutter_tdd/core/routes/app_pages.dart';
import 'package:flutter_tdd/core/routes/app_routes.dart';
import 'package:flutter_tdd/core/theme/app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Double V Partners',
      theme: AppTheme.light(),
      darkTheme: AppTheme.dark(),
      themeMode: AppTheme.defaultTheme,
      initialRoute: Routes.splash,
      routes: AppPages.routes,
    );
  }
}
