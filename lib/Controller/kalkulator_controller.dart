import 'package:get/get.dart';

class KalkulatorController extends GetxController {
  var hasil = 0.obs;

  // method tambah kurang kali dan bagi
  void tambah(int angka1, int angka2) {
    int hasilTambah = angka1 + angka2;
    hasil.value = hasilTambah;
  }

  void kurang(int angka1, int angka2) {
    int hasilkurang = angka1 - angka2;
    hasil.value = hasilkurang;
  }

  void kali(int angka1, int angka2) {
    int hasilkali = angka1 * angka2;
    hasil.value = hasilkali;
  }

  void bagi(int angka1, int angka2) {
    if (angka2 != 0) {
      int hasilbagi = angka1 ~/ angka2;
      hasil.value = hasilbagi;
    } else {
      hasil.value = 0;
    }
  }

  void reset() {
    hasil.value = 0;
  }
}
