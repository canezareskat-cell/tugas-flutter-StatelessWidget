import 'package:get/get.dart';

class ConfirmRegController extends GetxController {
  late String nama;
  late String Alamat;
  late String Gmail;
  late String Nomor;
  late String Kelamin;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    final arguments = Get.arguments;
    nama = arguments['name'];
    Alamat = arguments['Alamat'];
    Gmail = arguments['Gmail'];
    Nomor = arguments['Nomor'];
    Kelamin = arguments['Kelamin'];
  }
}
