import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:flutter_tdd/features/authentication/presentation/bloc/auth_bloc.dart';
import 'package:flutter_tdd/features/user/application/use_cases/use_cases.dart';
import 'package:flutter_tdd/features/authentication/application/use_cases/use_cases.dart';
import 'package:flutter_tdd/features/authentication/infrastructure/repositories/auth_repository.dart';
import 'package:flutter_tdd/core/app/infrastructure/repositories/local_repository.dart';
import 'package:flutter_tdd/features/user/infrastructure/repositories/user_repository.dart';
import 'package:flutter_tdd/features/authentication/presentation/pages/register/register_page.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';

import 'register_page_test.mocks.dart';

@GenerateMocks([AuthRepository, UserRepository, LocalRepository])
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
          persistUserUseCase: PersistUserUseCase(
            localRepository: mockLocalRepository,
          ),
        ),
        child: const RegisterPage(),
      ),
    );
  });
  group('Register - Step 1: SingUp Form', () {
    testWidgets('Should have a form when user is redirected to RegisterPage',
        (WidgetTester tester) async {
      await tester.pumpWidget(materialApp);
      // start in Register Page
      Finder page = find.byType(RegisterPage);
      expect(page, findsOneWidget);
      // find title text
      Finder title = find.text("Register");
      expect(title, findsOneWidget);
      // find email input
      Finder email = find.byKey(const Key("email"));
      expect(email, findsOneWidget);
      // find password input
      Finder password = find.byKey(const Key("password"));
      expect(password, findsOneWidget);
      // find checkbox input
      Finder checkbox = find.byType(CheckboxListTile);
      expect(checkbox, findsOneWidget);
      // find button Registrer
      Finder registerBtn = find.byKey(const Key("Registro"));
      expect(registerBtn, findsOneWidget);
      // find button Login
      Finder loginBtn = find.byKey(const Key("Login"));
      expect(loginBtn, findsOneWidget);
    });
  });
}
