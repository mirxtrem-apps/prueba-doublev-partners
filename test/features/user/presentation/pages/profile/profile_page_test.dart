import 'package:flutter/material.dart';
import 'package:flutter_tdd/core/routes/app_pages.dart';
import 'package:flutter_tdd/core/routes/app_routes.dart';
import 'package:flutter_tdd/features/user/presentation/pages/profile/profile_page.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('ProfilePage', () {
    testWidgets('Should have a Address option', (WidgetTester tester) async {
      await tester.pumpWidget(MaterialApp(
        initialRoute: Routes.profile,
        routes: AppPages.routes,
      ));
      
      // starts in ProfilePage
      Finder page = find.byType(ProfilePage);
      expect(page, findsOneWidget);

      // find title text
      Finder title = find.text("Profile");
      expect(title, findsOneWidget);

      // find Avatar widget
      Finder avatar = find.byType(CircleAvatar);
      expect(avatar, findsOneWidget);

      // find Username text
      Finder username = find.byKey(const Key("username"));
      expect(username, findsOneWidget);

      // find Email text
      Finder email = find.byKey(const Key("email"));
      expect(email, findsOneWidget);

      // find button Address ListTile
      Finder addressesOption = find.byWidgetPredicate(
        (widget) =>
            widget is ListTile &&
            widget.title is Text &&
            (widget.title as Text).data == "My Shipping Adrresses",
      );
      expect(addressesOption, findsOneWidget);
    });
  });
}
