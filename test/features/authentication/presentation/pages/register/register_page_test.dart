import 'package:flutter_tdd/main.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Register - Step 1: SingUp Form', () {
    testWidgets('Should have a form when user is redirected to RegisterPage',
        (WidgetTester tester) async {
      await tester.pumpWidget(const MyApp());
      // start in Splash
      // redirect user to register
      // find title text
      // find email input
      // find password input
      // find checkbox input
      // find button Registrer
      // find button Login
    });
  });
}
