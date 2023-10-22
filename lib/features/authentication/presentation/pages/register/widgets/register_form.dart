import 'package:flutter/material.dart';
import 'package:flutter_tdd/features/authentication/presentation/pages/register/widgets/register_title.dart';

import 'checkbox_input.dart';
import 'email_input.dart';
import 'password_input.dart';

class RegisterForm extends StatelessWidget {
  const RegisterForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          const RegisterTitle(),
          const EmailInput(),
          const PasswordInput(),
          const CheckboxInput(
            value: true,
            onChanged: null,
          ),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              key: const Key("Registro"),
              onPressed: () {},
              child: const Text("Sign Up"),
            ),
          ),
          SizedBox(
            width: double.infinity,
            child: TextButton(
              key: const Key("Login"),
              onPressed: () {},
              child: const Text("Al ready have an account?, Login"),
            ),
          ),
        ],
      ),
    );
  }
}
