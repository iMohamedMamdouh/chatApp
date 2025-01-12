import 'package:chat_app/auth/auth_gate.dart';
import 'package:chat_app/auth/login_or_register.dart';
import 'package:chat_app/firebase_options.dart';
import 'package:chat_app/pages/setting_page.dart';
import 'package:chat_app/themes/light_mode.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      getPages: [
        GetPage(name: '/LoginOrRegister', page: () => const LoginOrRegister()),
        GetPage(name: '/setting', page: () => const SettingPage()),
      ],
      debugShowCheckedModeBanner: false,
      home: const AuthGate(),
      theme: lightMode,
    );
  }
}
