import 'package:flutter/material.dart';

class DateInput extends StatelessWidget {
  const DateInput({
    super.key,
    required this.labelText,
    this.controller,
  });

  final String labelText;
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12.0),
      child: TextFormField(
        autovalidateMode: AutovalidateMode.onUserInteraction,
        keyboardType: TextInputType.datetime,
        controller: controller,
        decoration: InputDecoration(
          labelText: labelText,
        ),
        validator: (value) {
          return null;
        },
      ),
    );
  }
}
