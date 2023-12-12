import 'package:flutter/material.dart';
import 'package:login_page_pemesanan_makanan/UI/welcome_page.dart';
import 'package:login_page_pemesanan_makanan/tehemeShared/theme_shared.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.cyan,
          primaryColor: secondaryColor,
          canvasColor: Colors.transparent),
      home: const WelcomePage(),
    );
  }
}
