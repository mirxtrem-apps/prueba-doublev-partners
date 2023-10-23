import 'package:dartz/dartz.dart';

import '/core/app/domain/use_case/i_use_case.dart';
import '/features/user/application/mappers/user_mapper.dart';
import '/features/user/domain/entities/user_entity.dart';
import '/features/user/domain/repositories/i_user_repository.dart';

class CreateUserUseCase implements IUseCase<UserEntity, void> {
  final IUserRepository repository;

  CreateUserUseCase({required this.repository});

  @override
  Future<Either<Exception, void>> call([UserEntity? params]) async {
    try {
      final resp = await repository.createUser(UserMapper.toModel(params!));
      return Right(resp);
    } catch (e) {
      return Left(Exception(e.toString()));
    }
  }
}
