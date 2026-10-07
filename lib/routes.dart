import 'package:get/get.dart';
import 'package:canezares_flutter_rorrrrrr/Pages/registration_page.dart';
import 'package:canezares_flutter_rorrrrrr/Pages/Confirm_regis.dart';
import 'package:canezares_flutter_rorrrrrr/Pages/list_makanan_page.dart';
import 'package:flutter/material.dart';
class Routes {
  // list variabel nama halaman
  static const String registration = "/registration";
  static const String confirm_registration = "/confirm_registration";
  static const String list_makanan = "/list_makanan";
  // others pages here

  // untuk kita daftarkan di main dart, isinya array page yang kita punya
  static final myPages = [
    GetPage(name: registration, page: () => RegistrationPage()),
    GetPage(name: confirm_registration, page: () => ConfirmRegPage()),  
   GetPage(name: list_makanan, page: () => ListMakananPage()),

  ];
}