
import 'package:shared_preferences/shared_preferences.dart';

import '/core/app/domain/exceptions/invalid_token_exception.dart';
import '/core/app/domain/repositories/i_local_repository.dart';

class LocalRepository implements ILocalRepository {
  final SharedPreferences prefs;
  LocalRepository({required this.prefs});

  @override
  String? get token => prefs.getString('TOKEN');
  @override
  set token(String? value) {
    if (value == null) {
      throw InvalidTokenException('Token can not be null');
    }
    prefs.setString('TOKEN', value);
  }

  @override
  String get userId => prefs.getString('USER_ID') ?? '';
  @override
  set userId(String value) => prefs.setString('USER_ID', value);

}
