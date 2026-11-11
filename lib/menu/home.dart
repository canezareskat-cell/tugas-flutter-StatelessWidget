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
          const Padding(
            padding: EdgeInsets.all(16),
            child: Text(
              "Daftar API (JSON Array)",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 200,
            child: Obx(
              () {
                // Pengecekan loading
                if (controller.isLoading.value) {
                  return const Center(child: CircularProgressIndicator());
                }

                // Pengecekan data kosong
                if (controller.postList.isEmpty) {
                  return const Center(child: Text("Tidak ada data"));
                }

                // Menampilkan daftar JSON array
                return ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: controller.postList.length, 
                  itemBuilder: (context, index) {
                    final data = controller.postList[index]; 
                    
                    return Container(
                      width: 150,
                      margin: const EdgeInsets.only(left: 10),
                      child: Card(
                        child: Column(
                          children: [
                            Expanded(
                              child: Container(
                                width: double.infinity,
                                color: Colors.blue.withOpacity(0.1),
                                child: const Icon(Icons.article, size: 50, color: Colors.blue),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    data.title, 
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    style: const TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  const SizedBox(height: 4),
                                  Text(
                                    data.body,
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    style: const TextStyle(fontSize: 12),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}