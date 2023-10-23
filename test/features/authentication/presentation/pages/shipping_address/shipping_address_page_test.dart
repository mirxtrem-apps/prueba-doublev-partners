import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:flutter_tdd/features/authentication/application/use_cases/register_user_use_case.dart';
import 'package:flutter_tdd/features/authentication/application/use_cases/save_token_use_case.dart';
import 'package:flutter_tdd/features/authentication/presentation/bloc/auth_bloc.dart';
import 'package:flutter_tdd/features/authentication/presentation/pages/shipping_address/shipping_address_page.dart';
import 'package:flutter_tdd/features/user/application/use_cases/create_user_use_case.dart';
import 'package:flutter_tdd/features/user/application/use_cases/update_user_use_case.dart';

import '../register/register_page_test.mocks.dart';

void main() {
  late Widget materialApp;
  late MockAuthRepository mockAuthRepository;
  late MockUserRepository mockUserRepository;
  late MockLocalRepository mockLocalRepository;
  setUp(() {
    mockAuthRepository = MockAuthRepository();
    mockUserRepository = MockUserRepository();
    mockLocalRepository = MockLocalRepository();
    materialApp = MaterialApp(
      home: BlocProvider<AuthBloc>(
        create: (context) => AuthBloc(
          saveTokenUseCase: SaveTokenUseCase(
            localRepository: mockLocalRepository,
          ),
          createUserUseCase: CreateUserUseCase(
            repository: mockUserRepository,
          ),
          registerUserUseCase: RegisterUserUseCase(
            authRepository: mockAuthRepository,
          ),
          updateUserUseCase: UpdateUserUseCase(
            repository: mockUserRepository,
          ),
        ),
        child: const ShippingAddressPage(),
      ),
    );
  });
  group('Register - Step 3: Shipping Address Form', () {
    testWidgets(
        'Should have a form when user is redirected to PersonalDataPage',
        (WidgetTester tester) async {
      await tester.pumpWidget(materialApp);

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
