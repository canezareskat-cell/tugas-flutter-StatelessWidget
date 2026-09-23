import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../Components/custom_text_kalkulator.dart';
import '../Controller/kalkulator_controller.dart'; 

class KalkulatorPage extends StatelessWidget {
  const KalkulatorPage({super.key});

  @override
  Widget build(BuildContext context) {
    final KalkulatorController controller = Get.put(KalkulatorController());

    TextEditingController txtAngka1 = TextEditingController();
    TextEditingController txtAngka2 = TextEditingController();
    
    void hitung(Function(int, int) operasi) {
      if (txtAngka1.text.isNotEmpty && txtAngka2.text.isNotEmpty) {
        int angka1 = int.parse(txtAngka1.text);
        int angka2 = int.parse(txtAngka2.text);
        operasi(angka1, angka2);
      }
    }

    return Scaffold(
      appBar: AppBar(title: Text("Kalkulator")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            CustomTextKalkulator(controller: txtAngka1, hintText: "Input angka 1"),
            const SizedBox(height: 12),
            CustomTextKalkulator(controller: txtAngka2, hintText: "Input angka 2"),
            const SizedBox(height: 20),
            
            // Tombol-tombol operasi matematika
            Wrap(
              spacing: 10,
              runSpacing: 10,
              children: [
                ElevatedButton(
                  onPressed: () => hitung(controller.tambah),
                  child: Text("Tambah (+)"),
                ),
                ElevatedButton(
                  onPressed: () => hitung(controller.kurang),
                  child: Text("Kurang (-)"),
                ),
                ElevatedButton(
                  onPressed: () => hitung(controller.kali),
                  child: Text("Kali (×)"),
                ),
                ElevatedButton(
                  onPressed: () => hitung(controller.bagi),
                  child: Text("Bagi (÷)"),
                ),
              ],
            ),
            
            const SizedBox(height: 10),

            // Tombol Reset (Dibuat full width atau berdiri sendiri)
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red, // Warna tombol merah untuk reset
                  foregroundColor: Colors.white,
                ),
                onPressed: () {
                  txtAngka1.clear(); // Mengosongkan textfield 1
                  txtAngka2.clear(); // Mengosongkan textfield 2
                  controller.reset(); // Mengembalikan hasil jadi 0
                },
                child: Text("Reset / Hapus"),
              ),
            ),
            
            const SizedBox(height: 30),
            const Text("Hasil:", style: TextStyle(fontSize: 16, color: Colors.grey)),
            const SizedBox(height: 8),
            Obx(
              () => Text(
                controller.hasil.toString(),
                style: const TextStyle(fontSize: 45, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}