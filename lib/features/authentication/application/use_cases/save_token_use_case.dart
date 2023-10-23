import 'package:dartz/dartz.dart';

import '/core/app/domain/repositories/i_local_repository.dart';
import '/core/app/domain/use_case/i_use_case.dart';
import '/features/authentication/domain/exceptions/invalid_email_exception.dart';

class SaveTokenUseCase implements IUseCase<String, String?> {
  final ILocalRepository localRepository;

  SaveTokenUseCase({required this.localRepository});

  @override
  Future<Either<Exception, String?>> call([String? params]) async {
    try {
      localRepository.token = params;
      return Right(params);
    } on InvalidEmailException catch (e) {
      return Left(e);
    } catch (e) {
      return Left(Exception(e.toString()));
    }
  }
}
