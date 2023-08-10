import 'package:donor_mobile/firebase_options.dart';
// ignore: unused_import
import 'package:donor_mobile/views/screens/sign_in.dart';
import 'package:donor_mobile/views/screens/splash_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await initAppConfig();

  runApp(const MyApp());
}

Future<void> initAppConfig() async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  // final prefs = AppPreferences();

  // await dotenv.load(fileName: "lib/.env");
  // await Supabase.initialize(
  //   url: dotenv.env['CONST_SUPABASEURL']!,
  //   anonKey: dotenv.env['CONST_SUPABASEANONKEY']!,
  // );
  // await prefs.init();
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'JosefinSans',
        indicatorColor: Colors.black38,
      ),
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
    );
  }
}
