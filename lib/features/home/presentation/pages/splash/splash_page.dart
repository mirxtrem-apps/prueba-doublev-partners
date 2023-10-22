import 'package:flutter/material.dart';

import '/core/routes/app_routes.dart';
import '/core/shared/widgets/buttons/buttons.dart';
import '/features/home/presentation/pages/splash/widget/splash_logo.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints: const BoxConstraints.expand(),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Spacer(flex: 2),
              const SplashLogo(),
              const Spacer(flex: 1),
              SolidButton(
                key: const Key("Register"),
                label: "Register",
                onPressed: () {
                  Navigator.of(context).pushNamed(Routes.register);
                },
              ),
              FlatButton(
                label: "Maybe later",
                onPressed: () {},
              ),
              const SizedBox(height: 30.0)
            ],
          ),
        ),
      ),
    );
  }
}
