import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_tdd/features/authentication/application/use_cases/register_user_use_case.dart';
import 'package:flutter_tdd/features/authentication/application/use_cases/save_token_use_case.dart';
import 'package:flutter_tdd/features/authentication/presentation/bloc/auth_bloc.dart';
import 'package:flutter_tdd/features/user/application/use_cases/create_user_use_case.dart';
import 'package:flutter_tdd/features/user/domain/repositories/i_user_repository.dart';
import 'package:flutter_tdd/features/user/infrastructure/repositories/user_repository.dart';

import '/core/di/di.dart';
import '/core/routes/routes.dart';
import '/core/theme/app_theme.dart';
import '/core/app/domain/repositories/repositories.dart';
import '/core/app/infrastructure/repositories/repositories.dart';
import '/features/authentication/domain/repositories/repositories.dart';
import '/features/authentication/infrastructure/repositories/repositories.dart';

class MainApp extends StatelessWidget {
  const MainApp({
    super.key,
    required this.instance,
  });

  final GetIt instance;

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider<ILocalRepository>(
          create: (context) => LocalRepository(
            prefs: instance<SharedPreferences>(),
          ),
        ),
        RepositoryProvider<IAuthRepository>(
          create: (context) => AuthRepository(
            auth: instance<FirebaseAuth>(),
          ),
        ),
        RepositoryProvider<IUserRepository>(
          create: (context) => UserRepository(
            database: instance<FirebaseFirestore>(),
          ),
        ),
      ],
      child: BlocProvider<AuthBloc>(
        create: (context) => AuthBloc(
          registerUserUseCase: RegisterUserUseCase(
            authRepository: context.read<IAuthRepository>(),
          ),
          createUserUseCase: CreateUserUseCase(
            repository: context.read<IUserRepository>(),
          ),
          saveTokenUseCase: SaveTokenUseCase(
            localRepository: context.read<ILocalRepository>(),
          ),
        ),
        child: MaterialApp(
          title: 'Double V Partners',
          theme: AppTheme.light(),
          darkTheme: AppTheme.dark(),
          themeMode: AppTheme.defaultTheme,
          initialRoute: Routes.splash,
          routes: AppPages.routes,
        ),
      ),
    );
  }
}
