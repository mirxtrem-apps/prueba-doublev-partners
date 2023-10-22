import 'package:flutter/material.dart';
import 'package:flutter_tdd/core/routes/app_pages.dart';
import 'package:flutter_tdd/core/routes/app_routes.dart';
import 'package:flutter_tdd/features/user/presentation/pages/edit_address/edit_address_page.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  late MaterialApp materialApp;
  setUp(() => materialApp = MaterialApp(
        initialRoute: Routes.editAddress,
        routes: AppPages.routes,
      ));
  group('EditAddressPage', () {
    testWidgets(
        'Should have a form when user is redirected to PersonalDataPage',
        (WidgetTester tester) async {
      await tester.pumpWidget(materialApp);
      // start in AddressListPage
      Finder page = find.byType(EditAddressPage);
      expect(page, findsOneWidget);

      // find title text
      Finder title = find.text("Edit Address");
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

      // find Save and Delete buttons
      Finder saveBtn = find.byType(ElevatedButton);
      expect(saveBtn, findsNWidgets(2));
    });

    testWidgets('Should AlertDialog when Users wants to delete',
        (WidgetTester tester) async {
      await tester.pumpWidget(materialApp);

      // find Save and Delete buttons
      Finder deleteBtn = find.byWidgetPredicate(
        (widget) =>
            widget is ElevatedButton && (widget.child as Text).data == "Delete",
      );
      await tester.tap(deleteBtn);
      await tester.pump();

      // Find AlertDialog
      Finder alert = find.byType(AlertDialog); 
      expect(alert, findsOneWidget);
    });
  });
}
