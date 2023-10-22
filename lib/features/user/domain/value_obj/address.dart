import 'package:freezed_annotation/freezed_annotation.dart';

part 'address.freezed.dart';

@freezed
class Address with _$Address {
   factory Address({
    required String address,
    required String city,
    required String state,
    required String zipcode,
   }) = _Address;
}