import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '/core/routes/app_routes.dart';
import '/core/theme/label_styles.dart';
import '/core/shared/widgets/buttons/buttons.dart';
import '/core/shared/widgets/inputs/inputs.dart';
import '/core/shared/widgets/labels/title_label.dart';
import '/features/authentication/presentation/bloc/auth_bloc.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<AuthBloc>();
    return BlocConsumer<AuthBloc, AuthState>(
      listener: (context, state) {
        state.maybeWhen(
          orElse: () => null,
          loading: () => _showLoadingModal(context),
          userRegistered: () => _goToNext(context),
          failure: (message) => _showErrorMessage(context, message),
        );
      },
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(),
          body: SingleChildScrollView(
            padding: const EdgeInsets.all(16.0),
            child: Form(
              key: bloc.formKey,
              child: Column(
                children: [
                  const TitleLabel(text: "Register"),
                  EmailInput(
                    controller: bloc.emailCtrl,
                  ),
                  PasswordInput(
                    controller: bloc.passwordCtrl,
                  ),
                  const CheckboxInput(
                    text: "Acept terms and conditions...",
                    value: true,
                    onChanged: null,
                  ),
                  SolidButton(
                    key: const Key("Registro"),
                    label: "Sign Up",
                    onPressed: () =>
                        bloc.add(const AuthEvent.registerUser()),
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
      },
    );
  }

  _showLoadingModal(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => AlertDialog(
        title: Text("Estamos creando tu cuenta", style: LabelStyle.title()),
        content: const Row(
          children: [
            CircularProgressIndicator(),
            SizedBox(width: 8.0),
            Text("Por favor espere..."),
          ],
        ),
      ),
    );
  }

  _goToNext(BuildContext context) {
    Navigator.popAndPushNamed(context, Routes.personalData);
  }

  _showErrorMessage(BuildContext context, String message) {
    Navigator.pop(context);
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text("Estamos creando tu cuenta", style: LabelStyle.title()),
        content: Text(message, style: LabelStyle.paragraph()),
      ),
    );
  }
}
