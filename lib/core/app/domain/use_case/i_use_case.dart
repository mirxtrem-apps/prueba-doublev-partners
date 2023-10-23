import 'package:dartz/dartz.dart';
abstract interface class IUseCase<T, K> {
  Future<Either<Exception, K>> call([T? params]);
}