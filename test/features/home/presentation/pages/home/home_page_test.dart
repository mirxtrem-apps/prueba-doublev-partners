import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('HomePage', () {
    testWidgets('Should have Profile Button when user is Logged in',
        (WidgetTester tester) async {
      await tester.pumpWidget(const MaterialApp());
      // find button Profile
    });
  });
}