
import 'package:dartz/dartz.dart';
import 'package:flutter_tdd/core/di/di.dart';

import '/core/app/domain/use_case/i_use_case.dart';
import '/features/authentication/domain/value_obj/credential_request.dart';

class RegisterUserUseCase implements IUseCase<CredentialRequest, UserCredential> {
  
  @override
  Future<Either<Exception, UserCredential>> call([params]) {
    // TODO: implement call
    throw UnimplementedError();
  }
  
}