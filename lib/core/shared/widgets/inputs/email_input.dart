import 'package:flutter/material.dart';

class EmailInput extends StatelessWidget {
  const EmailInput({
    super.key,
    this.controller,
  });

  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12.0),
      child: TextFormField(
        autovalidateMode: AutovalidateMode.onUserInteraction,
        key: const Key("email"),
        controller: controller,
        decoration: const InputDecoration(labelText: "E-mail"),
        validator: (value) {
          return null;
        },
      ),
    );
  }
}
