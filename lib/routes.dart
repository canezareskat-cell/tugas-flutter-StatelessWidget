import 'package:get/get.dart';
import 'package:canezares_flutter_rorrrrrr/Pages/registration_page.dart';
import 'package:canezares_flutter_rorrrrrr/Pages/Confirm_regis.dart';
import 'package:canezares_flutter_rorrrrrr/Pages/list_makanan_page.dart';
import 'package:canezares_flutter_rorrrrrr/Pages/details_makanan_page.dart';
import 'package:canezares_flutter_rorrrrrr/Pages/main_menu_page.dart';
import 'package:canezares_flutter_rorrrrrr/Pages/login_Clone_Page.dart';
import 'package:flutter/material.dart';

class Routes {

  static const String registration = "/registration";
  static const String confirm_registration = "/confirm_registration";
  static const String list_makanan = "/list_makanan";
  static const String details_makanan = "/details_makanan_page";
  static const String main_menu = "/main_menu";
  static const String login_Clone_Page = "/login_Clone_Page";
 
  static final myPages = [
    GetPage(name: registration, page: () => RegistrationPage()),
    GetPage(name: confirm_registration, page: () => ConfirmRegPage()),
    GetPage(name: list_makanan, page: () => ListMakananPage()),
    GetPage(name: details_makanan, page: () => DetailsMakananPage()),
    GetPage(name: login_Clone_Page, page: () => LoginClonePage()),
    GetPage(name: main_menu, page: () => MainMenuPage()),
  ];
}
