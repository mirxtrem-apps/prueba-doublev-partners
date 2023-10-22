import 'package:flutter/material.dart';
import 'package:flutter_tdd/core/routes/app_routes.dart';
import 'package:flutter_tdd/core/shared/widgets/buttons/buttons.dart';
import 'package:flutter_tdd/core/shared/widgets/inputs/inputs.dart';
import 'package:flutter_tdd/core/shared/widgets/labels/title_label.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          child: Column(
            children: [
              const TitleLabel(text: "Register"),
              const EmailInput(),
              const PasswordInput(),
              const CheckboxInput(
                text: "Acept terms and conditions...",
                value: true,
                onChanged: null,
              ),
              SolidButton(
                key: const Key("Registro"),
                label: "Sign Up",
                onPressed: () =>
                    Navigator.of(context).popAndPushNamed(Routes.personalData),
              ),
              const FlatButton(
                key: Key("Login"),
                label: "Al ready have an account?, Login",
                onPressed: null,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
