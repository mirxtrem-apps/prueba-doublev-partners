import 'package:firebase_auth/firebase_auth.dart';

abstract interface class IAuthRepository {
  Future<UserCredential> signUp(String email, String password);
}