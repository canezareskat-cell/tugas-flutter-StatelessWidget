import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:canezares_flutter_rorrrrrr/Controller/Confirm_regis_controller.dart';

class ConfirmRegPage extends StatelessWidget {
  ConfirmRegPage({super.key});

  final controller = Get.put(ConfirmRegController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Confirm Registration")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Nama: ${controller.nama}",
              style: const TextStyle(fontSize: 20, color: Colors.blue),
            ),
            const SizedBox(height: 10),

            Text(
              "Alamat: ${controller.Alamat}",
              style: const TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 10),

            Text(
              "Gmail: ${controller.Gmail}",
              style: const TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 10),

            Text(
              "No Wa: ${controller.Nomor}",
              style: const TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 20),

            Text(
              "Jenis Kelamin : ${controller.Kelamin}",
              style: const TextStyle(fontSize: 18),
            ),

            ElevatedButton(
              onPressed: () {
                Get.back();
              },
              child: const Text("Oke"),
            ),
          ],
        ),
      ),
    );
  }
}