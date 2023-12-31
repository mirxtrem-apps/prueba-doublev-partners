import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get_it/get_it.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:shared_preferences/shared_preferences.dart';

export 'package:get_it/get_it.dart';
export 'package:firebase_auth/firebase_auth.dart';
export 'package:shared_preferences/shared_preferences.dart';


abstract class Di {

  static final instance = GetIt.instance;

  static Future<void> init() async {
    
    // Persistence
    final sharedPreferences = await SharedPreferences.getInstance();
    instance.registerSingleton<SharedPreferences>(sharedPreferences);
    
    // Authentication
    final firebaseAuth = FirebaseAuth.instance;
    instance.registerSingleton<FirebaseAuth>(firebaseAuth);
    
    // Database
    final firestore = FirebaseFirestore.instance;
    instance.registerSingleton<FirebaseFirestore>(firestore);
  }
}