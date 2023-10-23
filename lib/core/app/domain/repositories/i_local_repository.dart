abstract interface class ILocalRepository {
  bool get isAuthenticated;
  set isAuthenticated(bool val);

  String? get token;
  set token(String? val);
}