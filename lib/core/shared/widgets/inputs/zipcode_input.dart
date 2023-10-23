import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_tdd/core/utils/input_utils.dart';

class ZipCodeInput extends StatelessWidget {
  const ZipCodeInput({
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
        keyboardType: TextInputType.number,
        inputFormatters: [
          LengthLimitingTextInputFormatter(5),
        ],
        controller: controller,
        decoration: InputDecoration(
          labelText: labelText,
        ),
        validator: InputUtils.isZipCode,
      ),
    );
  }
}
