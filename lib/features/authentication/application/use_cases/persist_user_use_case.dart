import 'package:dartz/dartz.dart';

import '/features/user/domain/entities/user_entity.dart';
import '/core/app/domain/use_case/i_use_case.dart';
import '/core/app/domain/repositories/i_local_repository.dart';

class PersistUserUseCase implements IUseCase<UserEntity, UserEntity?> {
  final ILocalRepository localRepository;

  PersistUserUseCase({required this.localRepository});

  @override
  Future<Either<Exception, UserEntity?>> call([UserEntity? params]) async {
    try {
      localRepository.userId = params!.id!;
      return Right(params);
    } catch (e) {
      return Left(Exception(e.toString()));
    }
  }
}