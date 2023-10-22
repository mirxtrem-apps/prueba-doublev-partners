import 'package:flutter/material.dart';

class PasswordInput extends StatelessWidget {
  const PasswordInput({
    super.key,
    this.controller,
  });

  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: TextFormField(
        key: const Key("password"),
        controller: controller,
        decoration: const InputDecoration(labelText: "Password"),
        validator: (value) {
          return null;
        },
      ),
    );
  }
}
