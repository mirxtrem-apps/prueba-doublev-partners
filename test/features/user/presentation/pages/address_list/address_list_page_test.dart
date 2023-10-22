import 'package:flutter/material.dart';
import 'package:flutter_tdd/core/routes/app_pages.dart';
import 'package:flutter_tdd/core/routes/app_routes.dart';
import 'package:flutter_tdd/features/user/presentation/pages/address_list/address_list_page.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('AddressListPage', () {
    testWidgets(
        'Should have a empty page when user has not addresses registered',
        (WidgetTester tester) async {
      await tester.pumpWidget(MaterialApp(
        initialRoute: Routes.addressList,
        routes: AppPages.routes,
      ));
      // start in AddressListPage
      Finder page = find.byType(AddressListPage);
      expect(page, findsOneWidget);

      // find title text
      Finder title = find.text("My Addresses");
      expect(title, findsOneWidget);

      // there is not list element
      Finder listElement = find.byType(ListTile);
      expect(listElement, findsNothing);

      // find Add New button
      Finder addNewAddressBtn = find.byType(ElevatedButton);
      expect(addNewAddressBtn, findsOneWidget);
    });
  });
}
