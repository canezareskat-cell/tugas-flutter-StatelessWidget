import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:canezares_flutter_rorrrrrr/Controller/main_menu_controller.dart';
import 'package:canezares_flutter_rorrrrrr/Pages/menu_drawer_page.dart';
class MainMenuPage extends StatelessWidget {
  MainMenuPage({super.key});

  final mainMenuController = Get.put(MainMenuController());

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        appBar: AppBar(
          title: Text(
            [
              "Home",
              "History",
              "Profile",
            ][mainMenuController.selectedIndex.value],
          ),
        ),
        drawer: MenuDrawerPage(),
        body: IndexedStack(
          index: mainMenuController.selectedIndex.value,
          children: mainMenuController.listPages,
        ),
        bottomNavigationBar: BottomNavigationBar(
          onTap: mainMenuController.changePage,
          currentIndex: mainMenuController.selectedIndex.value,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons  .history_outlined),
              label: "History",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_outline),
              label: "Profile",
            ),
          ],
        ),
      ),
    );
  }
}