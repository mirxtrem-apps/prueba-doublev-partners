import 'package:shared_preferences/shared_preferences.dart';

import '/core/app/domain/repositories/i_local_repository.dart';

class LocalRepository implements ILocalRepository {
  
  final SharedPreferences prefs;
  LocalRepository({required this.prefs});

  @override
  bool get isAuthenticated => prefs.getBool('AUTHED') ?? false;
  @override
  set isAuthenticated(bool value) => prefs.setBool('AUTHED', value);

}