import 'package:flutter/material.dart';

import '/features/authentication/presentation/pages/register/widgets/register_form.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: RegisterForm(),
      ),
    );
  }
}
