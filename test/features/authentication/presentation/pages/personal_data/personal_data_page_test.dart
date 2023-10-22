import 'package:flutter/material.dart';
import 'package:flutter_tdd/core/routes/app_pages.dart';
import 'package:flutter_tdd/core/routes/app_routes.dart';
import 'package:flutter_tdd/features/authentication/presentation/pages/personal_data/personal_data_page.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Register - Step 2: Personal Data Form', () {
    testWidgets(
        'Should have a form when user is redirected to PersonalDataPage',
        (WidgetTester tester) async {
      await tester.pumpWidget(MaterialApp(
        initialRoute: Routes.personalData,
        routes: AppPages.routes,
      ));
      // redirect user to Personal Data Page
      Finder page = find.byType(PersonalDataPage);
      expect(page, findsOneWidget);
      // find title text
      Finder title = find.text("Personal Data");
      expect(title, findsOneWidget);
      // find firstname input
      Finder firstname = find.byKey(const Key("firstname"));
      expect(firstname, findsOneWidget);
      // find lastname input
      Finder lastname = find.byKey(const Key("lastname"));
      expect(lastname, findsOneWidget);
      // find birthdate input
      Finder birthdate = find.byKey(const Key("birthdate"));
      expect(birthdate, findsOneWidget);
      // find button Continue
      Finder continueBtn = find.byType(ElevatedButton);
      expect(continueBtn, findsOneWidget);
    });
  });
}
