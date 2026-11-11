import "package:get/get.dart";
import "../Models/makanan_model.dart";

class DetailMakananController extends GetxController {
  late String namaMakanan;
  late String deskripsiMakanan;
  late String gambarMakanan;
  late String hargaMakanan;
  late double ratingMakanan;
  late int reviewMakanan;

  @override
  void onInit() {
    super.onInit();
    if (Get.arguments != null) {
      MakananModel makanan = Get.arguments;
      namaMakanan = makanan.namaMakanan;
      deskripsiMakanan = makanan.deskripsi;
      gambarMakanan = makanan.gambar;
      hargaMakanan = makanan.hargaMakanan;
      ratingMakanan = double.tryParse(makanan.rating) ?? 0.0;
      reviewMakanan = 120; // atau sesuaikan jika di model ada review
    }
  }
}