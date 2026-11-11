import 'package:flutter/material.dart';
import 'package:get/get.dart';
// Pastikan path import ini sesuai dengan struktur folder kamu
import 'package:canezares_flutter_rorrrrrr/Controller/list_makanan_controller.dart';

class ListMakananPage extends StatelessWidget {
  // Panggil controllernya di sini (sesuaikan namanya jika beda)
  final ListMakananController controller = Get.put(ListMakananController());

  ListMakananPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Daftar API (JSON Array)"),
      ),
      
      // Obx wajib dipakai untuk bungkus widget yang datanya bisa berubah (reaktif)
      body: Obx(() {
        
        // 1. Cek loading: Jika isLoading true, tampilkan animasi muter
        if (controller.isLoading.value) {
          return const Center(child: CircularProgressIndicator());
        }

        // 2. Cek kosong: Jika data dari API tidak ada
        if (controller.postList.isEmpty) {
          return const Center(child: Text("Tidak ada data"));
        }

        // 3. Tampilkan list: Ini adalah ListView yang disuruh gurumu
        return ListView.builder(
          itemCount: controller.postList.length,
          itemBuilder: (context, index) {
            
            // Ambil data satuan berdasarkan urutan (index)
            var data = controller.postList[index];

            // Tampilkan dalam bentuk desain Card & ListTile agar rapi
            return Card(
              margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: ListTile(
                leading: CircleAvatar(
                  child: Text(data.id.toString()), // Menampilkan ID
                ),
                title: Text(
                  data.title, // Menampilkan judul tulisan
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Text(
                  data.body, // Menampilkan isi tulisan
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            );
          },
        );
      }),
    );
  }
}