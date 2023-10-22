import 'package:freezed_annotation/freezed_annotation.dart';

part 'email_address.freezed.dart';

@freezed
class EmailAddress with _$EmailAddress {
  factory EmailAddress._({required String value}) = _EmailAddress;

   factory EmailAddress({required String value}) {
    final RegExp emailRegex = RegExp(
      r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$',
    );
    if (!emailRegex.hasMatch(value)) {
      throw ArgumentError('La dirección de correo electrónico no es válida.');
    }
    return EmailAddress._(value: value);
   }
}