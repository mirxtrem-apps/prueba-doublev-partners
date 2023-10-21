import 'package:flutter_tdd/main.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('SplashPage', () {
    testWidgets('Should have a Register Button when App initialize',
        (WidgetTester tester) async {
      await tester.pumpWidget(const MyApp());
      // start in Splash
      // find button Registrer
    });
  });
}