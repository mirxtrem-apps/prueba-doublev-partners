import 'package:flutter/material.dart';
import 'package:flutter_tdd/core/routes/app_routes.dart';

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
            const Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                  height: 90,
                  width: 90,
                  child: Placeholder(),
                ),
                SizedBox(height: 20.0),
                Text("Store"),
              ],
            ),
            const Spacer(
              flex: 1,
            ),
            ElevatedButton(
              key: const Key("Register"),
              onPressed: () {
                Navigator.of(context).pushNamed(Routes.register);
              },
              child: const Text("Register"),
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
