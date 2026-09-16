import 'package:canezares_flutter_rorrrrrr/kalkulator_page.dart';
import 'package:canezares_flutter_rorrrrrr/login_clone.dart';
import 'package:canezares_flutter_rorrrrrr/login_page.dart';
import 'package:canezares_flutter_rorrrrrr/Pages/Login_Clone_Page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      // Langsung arahkan ke LoginPage karena MyHomePage sudah dihapus

      // home: const LoginPage(),
      // home : const KalkulatorPage(),
      // home: const LoginClone(),
      home: const LoginClonePage(),
    );
  }
}
