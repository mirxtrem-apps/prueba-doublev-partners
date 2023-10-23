import 'package:flutter_tdd/core/di/di.dart';

abstract interface class IAuthRepository {
  Future<UserCredential> register(String email, String password);
}