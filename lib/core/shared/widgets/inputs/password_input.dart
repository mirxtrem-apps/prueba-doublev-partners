import 'package:flutter/material.dart';
import 'package:flutter_tdd/core/utils/input_utils.dart';

class PasswordInput extends StatefulWidget {
  const PasswordInput({
    super.key,
    this.controller,
  });

  final TextEditingController? controller;

  @override
  State<PasswordInput> createState() => _PasswordInputState();
}

class _PasswordInputState extends State<PasswordInput> {
  bool obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: TextFormField(
        key: const Key("password"),
        controller: widget.controller,
        obscureText: obscureText,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        decoration: InputDecoration(
            labelText: "Password",
            suffixIcon: IconButton(
              onPressed: () => setState(() => obscureText = !obscureText),
              icon: Icon(
                obscureText ? Icons.visibility_off : Icons.visibility,
              ),
            )),
        validator: InputUtils.isPasswordValid,
      ),
    );
  }
}
