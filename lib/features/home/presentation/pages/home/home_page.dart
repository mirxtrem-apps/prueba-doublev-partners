import 'package:flutter/material.dart';

import '/features/home/presentation/pages/home/widgets/welcome_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Store')),
      body: Container(
        constraints: const BoxConstraints.expand(),
        child: const Column(
          children: [
            WelcomeWidget(),
            Expanded(
              child: Center(
                child: Text("Home"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
