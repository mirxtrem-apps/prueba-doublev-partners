import 'package:flutter/material.dart';
import 'package:flutter_tdd/core/utils/input_utils.dart';

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
        inputFormatters: [
          InputUtils.formatterDate(),
        ],
        controller: controller,
        decoration: InputDecoration(
          labelText: labelText,
          hintText: 'dd/mm/yyyy',
        ),
        validator: InputUtils.isEmpty,
      ),
    );
  }
}
