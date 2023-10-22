import 'package:flutter/material.dart';
import 'package:flutter_tdd/core/routes/app_routes.dart';
import 'package:flutter_tdd/features/home/presentation/pages/splash/widget/splash_logo.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints: const BoxConstraints.expand(),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Spacer(flex: 2),
            const SplashLogo(),
            const Spacer(flex: 1),
            SizedBox(
              width: 280.0,
              child: ElevatedButton(
                key: const Key("Register"),
                onPressed: () {
                  Navigator.of(context).pushNamed(Routes.register);
                },
                child: const Text("Register"),
              ),
            ),
            TextButton(
              onPressed: () {},
              child: const Text("Maybe later"),
            ),
            const SizedBox(height: 30.0)
          ],
        ),
      ),
    );
  }
}
