import 'package:flutter_tdd/main.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Register - Step 3: Shipping Address Form', () {
    testWidgets(
        'Should have a form when user is redirected to PersonalDataPage',
        (WidgetTester tester) async {
      await tester.pumpWidget(const MyApp());
      // redirect user to Shipping Address Page
      // find title text
      // find address input
      // find city input
      // find state input
      // find zipcode Continue
      // find skip button
      // find Finish button
    });
  });
}
