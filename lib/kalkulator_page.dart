import 'package:flutter/material.dart';

class KalkulatorPage extends StatefulWidget {
  const KalkulatorPage({super.key});

  @override
  State<KalkulatorPage> createState() => _KalkulatorPageState();
}

class _KalkulatorPageState extends State<KalkulatorPage> {
  // Controller untuk membaca inputan angka
  final TextEditingController c1 = TextEditingController();
  final TextEditingController c2 = TextEditingController();

  double hasil = 0; // Variabel buat nyimpen hasil ngitung

  // Fungsi-fungsi perhitungan (tetap sama seperti punyamu, aman!)
  void hitungTambah() {
    setState(() {
      double angka1 = double.tryParse(c1.text) ?? 0;
      double angka2 = double.tryParse(c2.text) ?? 0;
      hasil = angka1 + angka2;
    });
  }

  void hitungKurang() {
    setState(() {
      double angka1 = double.tryParse(c1.text) ?? 0;
      double angka2 = double.tryParse(c2.text) ?? 0;
      hasil = angka1 - angka2;
    });
  }

  void hitungKali() {
    setState(() {
      double angka1 = double.tryParse(c1.text) ?? 0;
      double angka2 = double.tryParse(c2.text) ?? 0;
      hasil = angka1 * angka2;
    });
  }

  void hitungBagi() {
    setState(() {
      double angka1 = double.tryParse(c1.text) ?? 0;
      double angka2 = double.tryParse(c2.text) ?? 0;
      if (angka2 != 0) {
        hasil = angka1 / angka2;
      } else {
        hasil = 0; // Mencegah error jika dibagi nol
      }
    });
  }

  void resetKalkulator() {
    setState(() {
      c1.clear();
      c2.clear();
      hasil = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100], // Warna background keseluruhan biar lembut
      appBar: AppBar(
        title: const Text(
          "Kalkulator Style Login",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
        backgroundColor: Colors.indigo,
        elevation: 0,
        centerTitle: true,
      ),
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20.0),
          child: Card(
            elevation: 8,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            child: Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  // Icon di atas form biar mirip halaman login
                  const Icon(
                    Icons.calculate_rounded,
                    size: 64,
                    color: Colors.indigo,
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    "Silakan Masukkan Angka",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                    ),
                  ),
                  const SizedBox(height: 25),

                  // Kotak Input Angka 1 (c1) dengan gaya TextField Login
                  TextField(
                    controller: c1,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      labelText: "Angka Pertama",
                      prefixIcon: const Icon(Icons.looks_one, color: Colors.indigo),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      filled: true,
                      fillColor: Colors.grey[50],
                    ),
                  ),
                  const SizedBox(height: 16),

                  // Kotak Input Angka 2 (c2)
                  TextField(
                    controller: c2,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      labelText: "Angka Kedua",
                      prefixIcon: const Icon(Icons.looks_two, color: Colors.indigo),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      filled: true,
                      fillColor: Colors.grey[50],
                    ),
                  ),

                  const SizedBox(height: 24),

                  // Baris Tombol Operator (+, -, x, /)
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      _buildOperatorButton("+", hitungTambah),
                      _buildOperatorButton("-", hitungKurang),
                      _buildOperatorButton("×", hitungKali),
                      _buildOperatorButton("÷", hitungBagi),
                    ],
                  ),

                  const SizedBox(height: 20),

                  // Kotak Tampilan Hasil
                  Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: Colors.indigo.withOpacity(0.05),
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: Colors.indigo.withOpacity(0.3)),
                    ),
                    child: Column(
                      children: [
                        const Text(
                          "Hasil Perhitungan",
                          style: TextStyle(fontSize: 14, color: Colors.grey),
                        ),
                        const SizedBox(height: 5),
                        Text(
                          "$hasil",
                          style: const TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                            color: Colors.indigo,
                          ),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 20),

                  // Tombol Reset (Warna Merah dengan bentuk modern)
                  ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.redAccent,
                      foregroundColor: Colors.white,
                      padding: const EdgeInsets.symmetric(vertical: 12),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      elevation: 2,
                    ),
                    onPressed: resetKalkulator,
                    icon: const Icon(Icons.refresh),
                    label: const Text(
                      "Reset",
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  // Widget helper biar kode tombol operator lebih rapi dan seragam
  Widget _buildOperatorButton(String label, VoidCallback onPressed) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.indigo,
        foregroundColor: Colors.white,
        minimumSize: const Size(60, 50),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        elevation: 2,
      ),
      onPressed: onPressed,
      child: Text(
        label,
        style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      ),
    );
  }
}