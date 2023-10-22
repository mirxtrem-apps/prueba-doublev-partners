import 'package:flutter/material.dart';
import 'package:flutter_tdd/core/routes/app_pages.dart';
import 'package:flutter_tdd/core/routes/app_routes.dart';
import 'package:flutter_tdd/features/user/presentation/pages/add_new_address/add_new_address_page.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('AddNewAddressPage', () {
    testWidgets(
        'Should have empty form when user is going to register new address',
        (tester) async {
      await tester.pumpWidget(MaterialApp(
        initialRoute: Routes.addNewAddress,
        routes: AppPages.routes,
      ));

      // start in Add New Address Page
      Finder page = find.byType(AddNewAddressPage);
      expect(page, findsOneWidget);

      // find title text
      Finder title = find.text("New Address");
      expect(title, findsOneWidget);

      // find address input
      Finder address = find.byKey(const Key("address"));
      expect(address, findsOneWidget);

      // find city input
      Finder city = find.byKey(const Key("city"));
      expect(city, findsOneWidget);

      // find state input
      Finder state = find.byKey(const Key("state"));
      expect(state, findsOneWidget);

      // find zipcode input
      Finder zipcode = find.byKey(const Key("zipcode"));
      expect(zipcode, findsOneWidget);

      // find Save button
      Finder saveBtn = find.byType(ElevatedButton);
      expect(saveBtn, findsOneWidget);
    });
  });
}
