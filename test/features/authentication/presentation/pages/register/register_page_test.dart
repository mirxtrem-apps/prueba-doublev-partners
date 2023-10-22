import 'package:flutter/material.dart';
import 'package:flutter_tdd/core/routes/app_pages.dart';

import 'package:flutter_tdd/core/routes/app_routes.dart';
import 'package:flutter_tdd/features/authentication/presentation/pages/register/register_page.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Register - Step 1: SingUp Form', () {
    testWidgets('Should have a form when user is redirected to RegisterPage',
        (WidgetTester tester) async {
      await tester.pumpWidget(MaterialApp(
        initialRoute: Routes.register,
        routes: AppPages.routes,
      ));
      // start in Register Page
      Finder page = find.byType(RegisterPage);
      expect(page, findsOneWidget);
      // find title text
      Finder title = find.text("Register");
      expect(title, findsOneWidget);
      // find email input
      Finder email = find.byKey(const Key("email"));
      expect(email, findsOneWidget);
      // find password input
      Finder password = find.byKey(const Key("password"));
      expect(password, findsOneWidget);
      // find checkbox input
      Finder checkbox = find.byType(CheckboxListTile);
      expect(checkbox, findsOneWidget);
      // find button Registrer
      Finder registerBtn = find.byKey(const Key("Registro"));
      expect(registerBtn, findsOneWidget);
      // find button Login
      Finder loginBtn = find.byKey(const Key("Login"));
      expect(loginBtn, findsOneWidget);
    });
  });
}
