
import 'package:flutter_tdd/core/constants/patterns.dart';

abstract class InputValidatorsUtils {

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
}