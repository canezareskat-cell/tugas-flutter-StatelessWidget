import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Controller/list_makanan_controller.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final controller = Get.put(ListMakananController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.all(16),
            child: Text(
              "Daftar Makanan",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 200,
            child: Obx(
              () => ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: controller.listMakanan.length,
                itemBuilder: (context, index) {
                  final makanan = controller.listMakanan[index];
                  return Container(
                    width: 150,
                    margin: EdgeInsets.only(left: 10),
                    child: Card(
                      child: Column(
                        children: [
                          Expanded(
                            child: Image.network(
                              makanan.gambar,
                              width: double.infinity,
                              fit: BoxFit.cover,
                              errorBuilder: (context, error, stackTrace) {
                                return Icon(Icons.fastfood);
                              },
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(8),
                            child: Column(
                              children: [
                                Text(makanan.namaMakanan),
                                Text(makanan.hargaMakanan),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
