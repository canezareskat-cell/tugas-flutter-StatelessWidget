import 'package:flutter/material.dart';
import 'package:canezares_flutter_rorrrrrr/Controller/login_controller.dart';
import 'package:canezares_flutter_rorrrrrr/Components/custom_button_discord.dart';
import 'package:canezares_flutter_rorrrrrr/Components/custom_teks_discord.dart';
import 'package:get/get.dart';

class LoginClonePage extends StatelessWidget {
  LoginClonePage({super.key});

  final controller = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 35),

            const Text(
              'Maxim',
              style: TextStyle(
                fontSize: 27,
                color: Color.fromARGB(255, 255, 238, 0),
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 25),

            Container(
              margin: const EdgeInsets.all(25),
              child: TextField(
                controller: controller.txtUsername,
                decoration: const InputDecoration(
                  hintText: "Input email",
                  border: OutlineInputBorder(),
                ),
              ),
            ),

            Container(
              margin: const EdgeInsets.all(25),
              child: TextField(
                controller: controller.txtPassword,
                obscureText: true,
                decoration: const InputDecoration(
                  hintText: "Input password",
                  border: OutlineInputBorder(),
                ),
              ),
            ),

            Obx(() => controller.isLoading.value
                ? const CircularProgressIndicator()
                : SizedBox(
                    width: 350,
                    height: 50,
                    child: ElevatedButton(
                      onPressed: () => controller.login(),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(255, 70, 192, 78),
                      ),
                      child: const Text(
                        'Login',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ),
                  )),

            const SizedBox(height: 15),

            SizedBox(
              width: 350,
              height: 40,
              child: ElevatedButton(
                onPressed: () {},
                child: const Text(
                  'Google',
                  style: TextStyle(color: Colors.grey),
                ),
              ),
            ),

            const SizedBox(height: 8),

            SizedBox(
              width: 350,
              height: 40,
              child: ElevatedButton(
                onPressed: () {},
                child: const Text(
                  'Facebook',
                  style: TextStyle(color: Colors.grey),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}