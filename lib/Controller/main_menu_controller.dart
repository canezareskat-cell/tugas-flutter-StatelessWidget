import 'package:canezares_flutter_rorrrrrr/menu/profile.dart';
import 'package:canezares_flutter_rorrrrrr/menu/home.dart';
import 'package:canezares_flutter_rorrrrrr/menu/history.dart';
import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';



class MainMenuController extends GetxController {
  final RxInt selectedIndex = 0.obs;

  void changePage(int index) {
    selectedIndex.value = index;
  }

  List<Widget> listPages = [HomePage(), HistoryPage(), ProfilePage()];
}