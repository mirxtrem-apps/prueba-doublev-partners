import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_tdd/features/authentication/application/use_cases/register_user_use_case.dart';
import 'package:flutter_tdd/features/authentication/application/use_cases/save_token_use_case.dart';
import 'package:flutter_tdd/features/authentication/presentation/bloc/auth_bloc.dart';
import 'package:flutter_tdd/features/user/application/use_cases/create_user_use_case.dart';
import 'package:flutter_tdd/features/user/application/use_cases/update_user_use_case.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:flutter_tdd/core/routes/app_pages.dart';
import 'package:flutter_tdd/core/routes/app_routes.dart';
import 'package:flutter_tdd/features/authentication/presentation/pages/personal_data/personal_data_page.dart';

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
        child: const PersonalDataPage(),
      ),
    );
  });
  group('Register - Step 2: Personal Data Form', () {
    testWidgets(
        'Should have a form when user is redirected to PersonalDataPage',
        (WidgetTester tester) async {
      await tester.pumpWidget(materialApp);
      // redirect user to Personal Data Page
      Finder page = find.byType(PersonalDataPage);
      expect(page, findsOneWidget);
      // find title text
      Finder title = find.text("Personal Data");
      expect(title, findsOneWidget);
      // find firstname input
      Finder firstname = find.byKey(const Key("firstname"));
      expect(firstname, findsOneWidget);
      // find lastname input
      Finder lastname = find.byKey(const Key("lastname"));
      expect(lastname, findsOneWidget);
      // find birthdate input
      Finder birthdate = find.byKey(const Key("birthdate"));
      expect(birthdate, findsOneWidget);
      // find button Continue
      Finder continueBtn = find.byType(ElevatedButton);
      expect(continueBtn, findsOneWidget);
    });
  });
}
