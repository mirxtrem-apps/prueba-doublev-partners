import 'package:flutter_tdd/features/user/domain/value_obj/address.dart';
import 'package:flutter_tdd/features/user/infrastructure/models/address_model.dart';

extension AddressExt on Address {
  AddressModel toModel() {
    return AddressModel(
      city: city,
      state: state,
      address: address,
      zipcode: int.parse(zipcode),
    );
  }
}
extension AddressModelExt on AddressModel {
  Address toDomain() {
    return Address(
      city: city,
      state: state,
      address: address,
      zipcode: zipcode.toString(),
    );
  }
}
