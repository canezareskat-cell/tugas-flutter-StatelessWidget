import 'package:get/get.dart';
import '../Models/makanan_model.dart';

class ListMakananController extends GetxController {
  // Kita buat data-datanya menggunakan Observers (.obs) agar reaktif jika nanti ingin di-update
  var listMakanan = <MakananModel>[
    MakananModel(
      namaMakanan: "Soto Ayam",
      hargaMakanan: "8.000",
      kategori: "Makanan Utama",
      deskripsi: "Soto ayam dengan kuah segar dan suwiran ayam",
      rating: "4",
      gambar: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRUlsvq9irXSDjfrwAszutZOZj9C2cIwJgeV7xYPQJGMaUTkFKg2eeHG7U&s=10",
    ),
    MakananModel(
      namaMakanan: "Lentog",
      hargaMakanan: "12.000",
      kategori: "Makanan Tradisional",
      deskripsi: "Lentog khas dengan lontong dan sayur lodeh nangka",
      rating: "5",
      gambar: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSnY_vWaNDRkkqnz3H1IP84detEl2sBKNr_chXin3Rx4K7wZ5YIdResrt-K&s=10",
    ),
    MakananModel(
      namaMakanan: "Soto Kerbau",
      hargaMakanan: "20.000",
      kategori: "Makanan Khas",
      deskripsi: "Daging kerbau empuk dengan kuah pindang pekat",
      rating: "5",
      gambar: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTyFG_b7mtNXz3PZ0z2E3ACTwP12WLWKoqZxqvqLjtm9q-z1g0gzogI9mGE&s=10",
    ),
    MakananModel(
      namaMakanan: "Pecel Muria",
      hargaMakanan: "10.000",
      kategori: "Makanan Tradisional",
      deskripsi: "Sayuran segar dengan bumbu pecel khas pegunungan",
      rating: "4",
      gambar: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSbxwTylUyWJQNp8wVIjSxOHaT10ToQXXR-D_dYar11kaBgZKa2JrTN9p0&s=10",
    ),
    MakananModel(
      namaMakanan: "Gethuk",
      hargaMakanan: "5.000",
      kategori: "Makanan Penutup",
      deskripsi: "Kue tradisional berbahan singkong yang manis dan lembut",
      rating: "5",
      gambar: "https://turisian.com/wp-content/uploads/2022/04/Getuk-Nyimut.jpg",
    ),
  ].obs;
}