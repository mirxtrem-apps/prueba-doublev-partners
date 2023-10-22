import 'package:get_it/get_it.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:shared_preferences/shared_preferences.dart';

export 'package:get_it/get_it.dart';
export 'package:firebase_auth/firebase_auth.dart';
export 'package:shared_preferences/shared_preferences.dart';


abstract class Di {

   static final instance = GetIt.instance;

   static Future<void> init() async {
      final sharedPreferences = SharedPreferences.getInstance();
      instance.registerLazySingletonAsync<SharedPreferences>(() => sharedPreferences);

      final firebaseAuth = FirebaseAuth.instance;
      instance.registerSingleton<FirebaseAuth>(firebaseAuth);
   }
}