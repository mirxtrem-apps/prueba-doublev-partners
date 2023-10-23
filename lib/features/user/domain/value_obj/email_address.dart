import 'package:freezed_annotation/freezed_annotation.dart';

import '/core/constants/patterns.dart';

part 'email_address.freezed.dart';

@freezed
class EmailAddress with _$EmailAddress {
  factory EmailAddress._({required String value}) = _EmailAddress;

   factory EmailAddress({required String value}) {
    final RegExp emailRegex = RegExp(emailPattern);
    if (!emailRegex.hasMatch(value)) {
      throw ArgumentError('La dirección de correo electrónico no es válida.');
    }
    return EmailAddress._(value: value);
   }
}