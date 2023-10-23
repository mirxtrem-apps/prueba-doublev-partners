
import 'package:flutter/services.dart';
import 'package:flutter_tdd/core/constants/patterns.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

abstract class InputUtils {

  static String? isEmailValid(String? email) {
    String? errorMessage;
    const pattern = emailPattern;
    final regExp = RegExp(pattern);
    if(!regExp.hasMatch(email!)) {
      errorMessage = 'Enter a valid email';
    }
    return errorMessage;
  }

  static String? isPasswordValid(String? password) {
    String? errorMessage;
    if(password!.length < 6) {
      errorMessage = 'Password too short';
    }
    return errorMessage;
  }

  static String? isEmpty(String? value) {
    String? errorMessage;
    if(value!.isEmpty) {
      errorMessage = 'Required field';
    }
    return errorMessage;
  }

  static TextInputFormatter formatterDate() {
    final maskFormatter = MaskTextInputFormatter(
      mask: '##/##/####',
      filter: {'#': RegExp(r'[0-9]')},
      type: MaskAutoCompletionType.lazy,
    );
    return maskFormatter;
  }
}