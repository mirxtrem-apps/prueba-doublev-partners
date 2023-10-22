import 'package:flutter/material.dart';
import 'package:flutter_tdd/core/routes/app_pages.dart';
import 'package:flutter_tdd/core/routes/app_routes.dart';
import 'package:flutter_tdd/features/authentication/presentation/pages/shipping_address/shipping_address_page.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Register - Step 3: Shipping Address Form', () {
    testWidgets(
        'Should have a form when user is redirected to PersonalDataPage',
        (WidgetTester tester) async {
      await tester.pumpWidget(MaterialApp(
        initialRoute: Routes.shippingAddress,
        routes: AppPages.routes,
      ));
      
      // start in Shipping Address Page
      Finder page = find.byType(ShippingAddressPage);
      expect(page, findsOneWidget);
      
      // find title text
      Finder title = find.text("Shipping Address");
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

      // find skip button
      Finder skipTextBtn = find.text("Skip");
      expect(skipTextBtn, findsOneWidget);

      // find Finish button
      Finder continueBtn = find.byType(ElevatedButton);
      expect(continueBtn, findsOneWidget);
    });
  });
}
