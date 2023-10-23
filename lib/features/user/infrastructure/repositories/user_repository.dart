import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_tdd/features/user/domain/exceptions/user_not_found_exception.dart';

import '/features/user/infrastructure/models/user_model.dart';
import '/features/user/domain/repositories/i_user_repository.dart';

class UserRepository implements IUserRepository {
  late CollectionReference<UserModel> usersRef;

  UserRepository({required FirebaseFirestore database}) {
    usersRef = database.collection("users").withConverter(
          fromFirestore: (snap, _) => UserModel.fromJson(snap.data()!),
          toFirestore: (model, _) => model.toJson(),
        );
  }

  @override
  Future<void> createUser(UserModel user) {
    return usersRef.doc(user.id).set(user);
  }

  @override
  Future<UserModel> getUserById(String id) async {
    final doc = await usersRef.doc(id).get();
    if (!doc.exists) {
      throw UserNotFoundException('User not found');
    }
    return doc.data()!;
  }

  @override
  Future<void> updateUserById(UserModel user) {
    return usersRef.doc(user.id).set(user, SetOptions(merge: true));
  }
}
