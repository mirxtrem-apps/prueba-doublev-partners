import 'package:firebase_auth/firebase_auth.dart';

import '/core/app/domain/repositories/i_auth_repository.dart';

class AuthRepository implements IAuthRepository {
  final FirebaseAuth auth;

  AuthRepository({required this.auth});

  @override
  Future<UserCredential> signUp(String email, String password) {
    return auth.createUserWithEmailAndPassword(
      email: email,
      password: password,
    );
  }
}
