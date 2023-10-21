import 'package:flutter_tdd/main.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('EditAddressPage', () {
    testWidgets(
        'Should have a form when user is redirected to PersonalDataPage',
        (WidgetTester tester) async {
      await tester.pumpWidget(const MyApp());
      // redirect user to Edit Address
      // find title text
      // find address input
      // find city input
      // find state input
      // find zipcode Continue
      // find Save button
      // find Delete button
    });

    // TODO: Test modal when Users wants to delete
  });
}