import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import '/core/di/di.dart';
import '/core/routes/routes.dart';
import '/core/theme/app_theme.dart';
import '/core/app/domain/repositories/repositories.dart';
import '/core/app/infrastructure/repositories/repositories.dart';


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
      ],
      child: MaterialApp(
        title: 'Double V Partners',
        theme: AppTheme.light(),
        darkTheme: AppTheme.dark(),
        themeMode: AppTheme.defaultTheme,
        initialRoute: Routes.splash,
        routes: AppPages.routes,
      ),
    );
  }
}
