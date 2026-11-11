import 'package:get/get.dart';

import '../Models/makanan_model.dart';

import 'package:http/http.dart' as http;
import 'package:canezares_flutter_rorrrrrr/Models/post_model.dart';

class ListMakananController extends GetxController {
  var isLoading = true.obs;
  var postList = <PostModel>[].obs;

 @override
  void onInit() {
    fetchData();
    super.onInit();
  }
  void fetchData() async {
    try {
      isLoading(true);
    
      final url = Uri.parse("https://jsonplaceholder.typicode.com/posts");
      
      final response = await http.get(url);

        if (response.statusCode == 200) {
     
        var result = postModelFromJson(response.body);
        
        
        postList.assignAll(result); 
      } else {
        Get.snackbar("Gagal", "Error mengambil data dari server");
      }
    } catch (e) {
      Get.snackbar("Error", e.toString());
      print("Error nya: " + e.toString());
    } finally {

      isLoading(false); 
    }
  }
}

