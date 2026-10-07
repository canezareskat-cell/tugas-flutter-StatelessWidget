import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../Models/makanan_model.dart'; // Sesuaikan path modelmu

class DetailsMakananPage extends StatelessWidget {
  final MakananModel makanan;

  const DetailsMakananPage({super.key, required this.makanan});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF4F9FD), // Latar belakang biru sangat muda/keputihan
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 168, 219, 255), // Biru keputihan yang senada
        elevation: 0,
        title: Text(
          makanan.namaMakanan,
          style: const TextStyle(
            color: Color.fromARGB(255, 20, 60, 100),
            fontWeight: FontWeight.bold,
          ),
        ),
        iconTheme: const IconThemeData(color: Color.fromARGB(255, 20, 60, 100)),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // 1. Gambar Besar di Atas dengan Sudut Melengkung Bawah
            Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.blue.withOpacity(0.08),
                    blurRadius: 10,
                    offset: const Offset(0, 4),
                  ),
                ],
              ),
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(24),
                  bottomRight: Radius.circular(24),
                ),
                child: Image.network(
                  makanan.gambar,
                  width: double.infinity,
                  height: 260,
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) {
                    return Container(
                      width: double.infinity,
                      height: 260,
                      color: const Color.fromARGB(255, 210, 235, 255),
                      child: const Icon(
                        Icons.fastfood,
                        color: Color.fromARGB(255, 80, 140, 200),
                        size: 60,
                      ),
                    );
                  },
                ),
              ),
            ),
            
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Kategori & Rating
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 215, 238, 255),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Text(
                          makanan.kategori,
                          style: const TextStyle(
                            color: Color.fromARGB(255, 30, 100, 170),
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          const Icon(Icons.star, color: Colors.amber, size: 20),
                          const SizedBox(width: 4),
                          Text(
                            makanan.rating,
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              color: Colors.black87,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 12),

                  // Nama Makanan
                  Text(
                    makanan.namaMakanan,
                    style: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                    ),
                  ),
                  const SizedBox(height: 8),

                  // Harga
                  Text(
                    "Rp ${makanan.hargaMakanan}",
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 20, 100, 180),
                    ),
                  ),
                  const SizedBox(height: 16),

                  // Deskripsi Lengkap
                  const Text(
                    "Deskripsi Menu",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                    ),
                  ),
                  const SizedBox(height: 6),
                  Text(
                    makanan.deskripsi,
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey[700],
                      height: 1.5,
                    ),
                  ),
                  const SizedBox(height: 24),

                  // Kotak Informasi Tambahan (Tema Biru Lembut)
                  Container(
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 230, 243, 255),
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(
                        color: const Color.fromARGB(255, 190, 225, 255),
                      ),
                    ),
                    child: Row(
                      children: const [
                        Icon(
                          Icons.info_outline,
                          color: Color.fromARGB(255, 40, 120, 200),
                        ),
                        SizedBox(width: 10),
                        Expanded(
                          child: Text(
                            "Dimasak fresh setelah pesanan diterima dan dijamin higienis.",
                            style: TextStyle(
                              fontSize: 13,
                              color: Color.fromARGB(255, 30, 80, 130),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      
      // 2. Tombol Aksi di Bagian Bawah (Keranjang & Pesan) dengan Tema Biru
      bottomNavigationBar: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.blue.withOpacity(0.1),
              blurRadius: 10,
              offset: const Offset(0, -2),
            ),
          ],
        ),
        child: Row(
          children: [
            // Tombol Keranjang
            Expanded(
              child: OutlinedButton.icon(
                onPressed: () {
                  Get.snackbar(
                    "Berhasil", 
                    "${makanan.namaMakanan} dimasukkan ke keranjang!",
                    snackPosition: SnackPosition.BOTTOM,
                    backgroundColor: const Color.fromARGB(255, 215, 238, 255),
                    colorText: const Color.fromARGB(255, 20, 60, 100),
                  );
                },
                icon: const Icon(
                  Icons.shopping_cart_outlined,
                  color: Color.fromARGB(255, 30, 100, 170),
                ),
                label: const Text(
                  "+ Keranjang",
                  style: TextStyle(
                    color: Color.fromARGB(255, 30, 100, 170),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                style: OutlinedButton.styleFrom(
                  side: const BorderSide(
                    color: Color.fromARGB(255, 168, 219, 255),
                    width: 1.5,
                  ),
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
            ),
            const SizedBox(width: 12),
            
            // Tombol Pesan Sekarang
            Expanded(
              child: ElevatedButton.icon(
                onPressed: () {
                  Get.snackbar(
                    "Pesanan Diproses", 
                    "Melanjutkan ke pembayaran ${makanan.namaMakanan}",
                    snackPosition: SnackPosition.BOTTOM,
                    backgroundColor: const Color.fromARGB(255, 168, 219, 255),
                    colorText: const Color.fromARGB(255, 20, 60, 100),
                  );
                },
                icon: const Icon(Icons.bolt, color: Colors.white),
                label: const Text(
                  "Pesan",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 50, 130, 210),
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  elevation: 0,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}