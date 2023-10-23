import '/features/user/infrastructure/models/user_model.dart';

abstract interface class IUserRepository {
  Future<void> createUser(UserModel user);  
  Future<UserModel> getUserById(String id);  
  Future<void> updateUserById(UserModel user);  
}