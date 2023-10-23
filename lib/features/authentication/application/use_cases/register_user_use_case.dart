import 'package:dartz/dartz.dart';
import 'package:flutter_tdd/features/authentication/domain/enums/auth_code_exceptions.dart';
import 'package:flutter_tdd/features/authentication/domain/exceptions/email_already_in_use_exception.dart';
import 'package:flutter_tdd/features/authentication/domain/exceptions/invalid_email_exception.dart';
import 'package:flutter_tdd/features/authentication/domain/exceptions/operation_not_allowed_exception.dart';
import 'package:flutter_tdd/features/authentication/domain/exceptions/weak_password_exception.dart';

import '/core/di/di.dart';
import '/core/app/domain/use_case/i_use_case.dart';
import '/features/authentication/domain/repositories/i_auth_repository.dart';
import '/features/authentication/domain/value_obj/credential_request.dart';

class RegisterUserUseCase
    implements IUseCase<CredentialRequest, UserCredential> {
  final IAuthRepository authRepository;

  RegisterUserUseCase({required this.authRepository});

  @override
  Future<Either<Exception, UserCredential>> call(
      [CredentialRequest? params]) async {
    try {
      final userCredentials = await authRepository.register(
        params!.email,
        params.password,
      );
      return Right(userCredentials);
    } on FirebaseAuthException catch (e) {
      return Left(_handleExceptions(e));
    } catch (e) {
      return Left(Exception(e.toString()));
    }
  }

  Exception _handleExceptions(FirebaseAuthException e) {
    final codeException =
        AuthCodeException.values.firstWhere((code) => code.value == e.code);
    switch (codeException) {
      case AuthCodeException.emailInUse:
        return EmailAlreadyInUseException('Este correo ya esta registrado');
      case AuthCodeException.invalidEmail:
        return InvalidEmailException('Ingrese un correo válido');
      case AuthCodeException.operationNotAllowed:
        return OperationNotAllowedException('Operacion no permitida');
      case AuthCodeException.weakPassword:
        return WeakPasswordException('Contraseña muy corta');
    }
  }
}
