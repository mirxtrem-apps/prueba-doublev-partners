import 'package:flutter_tdd/features/authentication/domain/exceptions/invalid_email_exception.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '/core/app/domain/repositories/i_local_repository.dart';

class LocalRepository implements ILocalRepository {
  
  final SharedPreferences prefs;
  LocalRepository({required this.prefs});

  @override
  String? get token => prefs.getString('TOKEN');
  @override
  set token(String? value) {
    if(value == null) {
      throw InvalidEmailException('Token can not be null');
    }
    prefs.setString('TOKEN', value);
  }

  @override
  bool get isAuthenticated => prefs.getBool('AUTHED') ?? false;
  @override
  set isAuthenticated(bool value) => prefs.setBool('AUTHED', value);

}