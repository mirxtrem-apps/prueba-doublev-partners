import 'package:flutter_tdd/main.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('ProfilePage', () {
    testWidgets('Should have a Address option',
        (WidgetTester tester) async {
      await tester.pumpWidget(const MyApp());
      // starts in HomePage
      // redirect to Profile Page
      // find button Address ListTile
    });
  });
}