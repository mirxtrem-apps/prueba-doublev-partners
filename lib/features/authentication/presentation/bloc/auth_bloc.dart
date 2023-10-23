import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_tdd/core/di/di.dart';
import 'package:flutter_tdd/features/authentication/application/use_cases/save_token_use_case.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '/features/authentication/application/use_cases/register_user_use_case.dart';
import '/features/authentication/domain/value_obj/credential_request.dart';
import '/features/user/application/use_cases/create_user_use_case.dart';
import '/features/user/domain/entities/user_entity.dart';
import '/features/user/domain/value_obj/address.dart';
import '/features/user/domain/value_obj/email_address.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final RegisterUserUseCase registerUserUseCase;
  final CreateUserUseCase createUserUseCase;
  final SaveTokenUseCase saveTokenUseCase;

  UserEntity? userEntity;

  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  TextEditingController emailCtrl = TextEditingController();
  TextEditingController passwordCtrl = TextEditingController();
  TextEditingController firstnameCtrl = TextEditingController();
  TextEditingController lastnameCtrl = TextEditingController();
  TextEditingController birthdateCtrl = TextEditingController();

  AuthBloc({
    required this.registerUserUseCase,
    required this.createUserUseCase,
    required this.saveTokenUseCase,
  }) : super(const _Initial()) {
    on<RegisterUserEvent>(_registerUser);
    on<CreateUserEvent>(_createUser);
    on<AddShippingAddressEvent>(_addShippingAddress);
  }

  FutureOr<void> _registerUser(event, emit) async {
    emit(const AuthState.loading());

    CredentialRequest request = CredentialRequest(
      email: emailCtrl.text,
      password: passwordCtrl.text,
    );

    final state = await registerUserUseCase(request);

    final result = state.fold(
      (e) => AuthState.failure(e.toString()),
      (response) => AuthState.userRegistered(
        userCredential: response,
      ),
    );

    if (result is _UserRegisteredState) {
      final token = result.userCredential.credential?.accessToken;
      final state = await saveTokenUseCase(token);
      state.fold((e) => AuthState.failure(e.toString()), (_) {});
    }

    emit(result);
  }

  FutureOr<void> _createUser(event, emit) async {
    emit(const AuthState.loading());
    userEntity = UserEntity(
      email: EmailAddress(value: emailCtrl.text),
      firstname: firstnameCtrl.text,
      lastname: lastnameCtrl.text,
      birthdate: birthdateCtrl.text,
    );

    final state = await createUserUseCase(userEntity);

    final result = state.fold(
      (exception) => AuthState.failure(exception.toString()),
      (_) => const AuthState.userCreated(),
    );
    emit(result);
  }

  FutureOr<void> _addShippingAddress(event, emit) async {
    emit(const AuthState.loading());

    Address address = Address(
      city: event.city,
      state: event.state,
      address: event.address,
      zipcode: event.zipcode,
    );

    final updatedUser = userEntity?.copyWith(addresses: [address]);

    final state = await createUserUseCase(updatedUser);

    final result = state.fold(
      (exception) => AuthState.failure(exception.toString()),
      (_) => const AuthState.userCreated(),
    );
    emit(result);
  }

  bool get isFormValid => formKey.currentState?.validate() ?? false;
}
