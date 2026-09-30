import 'package:canezares_flutter_rorrrrrr/Components/custom_dropdown.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:canezares_flutter_rorrrrrr/Components/custom_text_regis.dart';
import 'package:canezares_flutter_rorrrrrr/Pages/Confirm_regis.dart';
import 'package:canezares_flutter_rorrrrrr/routes.dart';
import 'package:canezares_flutter_rorrrrrr/Components/custom_text_kalkulator.dart';

class RegistrationPage extends StatelessWidget {
  const RegistrationPage({super.key});

  @override
  Widget build(BuildContext context) {
    // 1. Buat Controller untuk menampung teks inputan
    TextEditingController txtNama = TextEditingController();
    TextEditingController txtalamat = TextEditingController();
    TextEditingController txtgmail = TextEditingController();
    TextEditingController txtWa = TextEditingController();
    TextEditingController txtJenisKelamin = TextEditingController();
    return Scaffold(
      appBar: AppBar(title: const Text("Registration Page")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // 2. Panggil CustomTextRegis yang sudah dibuat
            CustomTextRegis(
              controller: txtNama,
              hintText: "Masukkan Nama Anda",
            ),
            const SizedBox(height: 20),

            CustomTextRegis(
              controller: txtalamat,
              hintText: "Masukkan Alamat Anda",
            ),
            const SizedBox(height: 20),

            CustomTextRegis(
              controller: txtgmail,
              hintText: "Masukkan gmail anda ",
            ),
            const SizedBox(height: 20),

            CustomTextKalkulator(controller: txtWa, hintText: "Masukkan Wa"),
            const SizedBox(height: 20),


            CustomDropdown(controller: txtJenisKelamin, hint: " Kelamin "),
            

  

            ElevatedButton(
              onPressed: () {
                // 3. Mengirim data dari text field ke halaman konfirmasi
                Get.toNamed(
                  Routes.confirm_registration,
                  arguments: {
                    'name': txtNama.text,
                    'Alamat': txtalamat.text, // Ditambahkan .text
                    'Gmail': txtgmail.text, // Ditambahkan agar gmail ikut terkirim
                    'Nomor': txtWa.text, // Ditambahkan .text
                    'Kelamin': txtJenisKelamin.text
                  },
                );
              },
              child: const Text("Send"),
            ),
          ],
        ),
      ),
    );
  }
}
