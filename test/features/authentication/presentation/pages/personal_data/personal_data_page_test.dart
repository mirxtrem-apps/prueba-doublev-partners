import 'package:flutter_tdd/main.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Register - Step 2: Personal Data Form', () {
    testWidgets(
        'Should have a form when user is redirected to PersonalDataPage',
        (WidgetTester tester) async {
      await tester.pumpWidget(const MyApp());
      // redirect user to Personal Data Page
      // find title text
      // find firstname input
      // find lastname input
      // find birthdate input
      // find button Continue
    });
  });
}
