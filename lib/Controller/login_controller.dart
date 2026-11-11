import 'dart:convert';

import 'package:canezares_flutter_rorrrrrr/Models/login_model.dart';
import 'package:canezares_flutter_rorrrrrr/main.dart';
import 'package:canezares_flutter_rorrrrrr/routes.dart';
import 'package:canezares_flutter_rorrrrrr/Pages/main_menu_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class LoginController extends GetxController {
  TextEditingController txtUsername = TextEditingController();
  TextEditingController txtPassword = TextEditingController();

  var isLoading = false.obs;

  var loginModel = Rxn<LoginModels>();


  void login() async {
    if (txtUsername.text.toString().isEmpty ||
        txtPassword.text.toString().isEmpty) {
      Get.snackbar("error", "username dan password harus terisi");
    } else {
      try {
        isLoading.value = true;
        final url = Uri.parse("https://mediadwi.com/api/latihan/login");

        final response = await http.post(
          url,
          body: {
            "username": txtUsername.text.toString(),
            "password": txtPassword.text.toString(),
          },
        );

        isLoading.value = false;

        if (response.statusCode == 200) {
          loginModel.value = loginModelsFromJson(response.body);

          if (loginModel.value?.status == true) {
            Get.snackbar(
              "berhasil",
              loginModel.value!.message.toString(),
            );
            
            
            Get.offNamed(Routes.list_makanan); 

          } else {
            Get.snackbar(
              "gagal",
              loginModel.value!.message.toString(),
            ); 
          }
        } else {
          Get.snackbar("gagal", "cek internet connection");
        }
      } catch (e) {
        Get.snackbar("gagal", e.toString());
        print("error nya " + e.toString());
      }
    }
  }
}