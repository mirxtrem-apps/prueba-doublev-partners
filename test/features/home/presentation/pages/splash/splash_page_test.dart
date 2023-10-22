import 'package:flutter/material.dart';

import 'package:flutter_tdd/core/routes/app_pages.dart';
import 'package:flutter_tdd/core/routes/app_routes.dart';
import 'package:flutter_tdd/features/home/presentation/pages/splash/splash_page.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('SplashPage', () {
    testWidgets('Should have a Register Button when App initialize',
        (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          initialRoute: Routes.splash,
          routes: AppPages.routes,
        ),
      );
      
      // Start in Splash Page
      Finder splash = find.byType(SplashPage);
      expect(splash, findsOneWidget);
      
      // find button Registrer
      Finder finder = find.byKey(const Key("Register"));
      expect(finder, findsOneWidget);
    });
  });
}
