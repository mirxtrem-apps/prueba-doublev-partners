abstract interface class ILocalRepository {

  String? get token;
  set token(String? val);

  String? get currentUser;
  set currentUser(String? val);
}