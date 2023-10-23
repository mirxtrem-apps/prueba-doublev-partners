part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.registerUser() = RegisterUserEvent;
  const factory AuthEvent.createUser() = CreateUserEvent;
  const factory AuthEvent.addShippingAddress({
    required String city,
    required String state,
    required String address,
    required String zipcode,
  }) = AddShippingAddressEvent;
}