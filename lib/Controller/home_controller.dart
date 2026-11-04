import 'package:get/get.dart';

class HomeController extends GetxController {
  // Data list makanan (sesuai data Soto, Nasi Goreng, dll)
  final listMakanan = <Map<String, dynamic>>[
    {
      'nama': 'Soto Ayam',
      'harga': 'Rp 15.000',
      'gambar': 'https://images.unsplash.com/photo-1604908176997-125f25cc6f3d?w=500',
      'deskripsi': 'Soto ayam lezat dengan kuah kuning gurih dan koya.',
    },
    {
      'nama': 'Nasi Goreng',
      'harga': 'Rp 18.000',
      'gambar': 'https://images.unsplash.com/photo-1603133872878-684f208fb84b?w=500',
      'deskripsi': 'Nasi goreng spesial dengan telur dan suwiran ayam.',
    },
    {
      'nama': 'Bakso Sapi',
      'harga': 'Rp 20.000',
      'gambar': 'https://images.unsplash.com/photo-1569058242253-92a9c755a0ec?w=500',
      'deskripsi': 'Bakso daging sapi asli kenyal dengan kuah kaldu segar.',
    },
    {
      'nama': 'Mie Ayam',
      'harga': 'Rp 13.000',
      'gambar': 'https://images.unsplash.com/photo-1585032226651-759b368d7246?w=500',
      'deskripsi': 'Mie kenyal dengan potongan ayam manis gurih.',
    },
  ].obs;
}