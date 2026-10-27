import 'package:canezares_flutter_rorrrrrr/kalkulator_page.dart';
import 'package:canezares_flutter_rorrrrrr/login_clone.dart';
import 'package:canezares_flutter_rorrrrrr/login_page.dart';
import 'package:canezares_flutter_rorrrrrr/Pages/Login_Clone_Page.dart';
import 'package:canezares_flutter_rorrrrrr/Pages/kalkulator_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:canezares_flutter_rorrrrrr/routes.dart';
import 'package:canezares_flutter_rorrrrrr/Pages/list_makanan_page.dart';


void main() { 
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "My Learning App",
      initialRoute: Routes.main_menu,
      getPages: Routes.myPages,
    );
  }
}