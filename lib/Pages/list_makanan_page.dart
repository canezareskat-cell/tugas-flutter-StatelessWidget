import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../Controller/list_makanan_controller.dart';
import 'details_makanan_page.dart'; // Pastikan nama file import ini sesuai dengan file halaman detailmu

class ListMakananPage extends StatelessWidget {
  ListMakananPage({super.key});

  final controller = Get.put(ListMakananController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[150], // Background agak abu-abu terang
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 168, 219, 255), // Warna Biru Keputihan
        title: const Text(
          "List Makanan",
          style: TextStyle(
            color: Color.fromARGB(255, 255, 255, 255),
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Container(
        margin: const EdgeInsets.all(10),
        child: ListView.builder(
          itemCount: controller.listMakanan.length,
          itemBuilder: (context, index) {
            final makanan = controller.listMakanan[index];
            return Container(
              margin: const EdgeInsets.only(bottom: 12.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16.0), // Kotak melengkung
                boxShadow: [
                  BoxShadow(
                    color: const Color.fromARGB(255, 128, 128, 128).withOpacity(0.1),
                    spreadRadius: 1,
                    blurRadius: 5,
                    offset: const Offset(0, 2), // Efek bayangan halus
                  ),
                ],
              ),
              child: InkWell(
                borderRadius: BorderRadius.circular(16.0),
                onTap: () {
                  // Pindah ke detail page menggunakan Get.to sambil membawa data makanan
                  Get.to(() => DetailsMakananPage(makanan: makanan));
                },
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      // 1. Gambar Makanan di Sebelah Kiri
                      ClipRRect(
                        borderRadius: BorderRadius.circular(12.0),
                        child: Image.network(
                          makanan.gambar,
                          width: 90,
                          height: 90,
                          fit: BoxFit.cover,
                          errorBuilder: (context, error, stackTrace) {
                            return Container(
                              width: 90,
                              height: 90,
                              color: const Color.fromARGB(255, 255, 204, 153),
                              child: const Icon(
                                Icons.fastfood,
                                color: Color.fromARGB(255, 255, 140, 0),
                                size: 30,
                              ),
                            );
                          },
                        ),
                      ),
                      const SizedBox(width: 14),

                      // 2. Teks Informasi di Sebelah Kanan
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // Kategori kecil warna oranye
                            Text(
                              makanan.kategori,
                              style: const TextStyle(
                                color: Color.fromARGB(255, 255, 140, 0),
                                fontSize: 11,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            const SizedBox(height: 2),

                            // Nama Makanan
                            Text(
                              makanan.namaMakanan,
                              style: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.black87,
                              ),
                            ),
                            const SizedBox(height: 2),

                            // Deskripsi Singkat
                            Text(
                              makanan.deskripsi,
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.grey[600],
                              ),
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                            const SizedBox(height: 8),

                            // Harga dan Rating Bintang
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Rp ${makanan.hargaMakanan}",
                                  style: const TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black87,
                                  ),
                                ),
                                Row(
                                  children: [
                                    const Icon(Icons.star, color: Colors.amber, size: 16),
                                    const SizedBox(width: 4),
                                    Text(
                                      makanan.rating,
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.grey[700],
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}