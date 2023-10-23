import 'package:flutter/material.dart';

import 'package:firebase_core/firebase_core.dart';

import '/core/di/di.dart';
import '/core/app/presentation/main_app.dart';
import '/core/config/firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  await Di.init();
  runApp(MainApp(
    instance: Di.instance,
  ));
}
