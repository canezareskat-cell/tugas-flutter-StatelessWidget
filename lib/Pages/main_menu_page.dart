import 'package:canezares_flutter_rorrrrrr/Controller/main_menu_controller.dart';
import 'package:canezares_flutter_rorrrrrr/Pages/menu_drawer_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
  
        drawer: const MenuDrawerPage(),
        body: IndexedStack(
          index: mainMenuController.selectedIndex.value,
          children: mainMenuController.listPages,
        ),
        bottomNavigationBar: BottomNavigationBar(
          onTap: mainMenuController.changePage,
          currentIndex: mainMenuController.selectedIndex.value,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
              activeIcon: Icon(Icons.home),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.history_outlined),
              activeIcon: Icon(Icons.history),
              label: "History",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_outline),
              activeIcon: Icon(Icons.person),
              label: "Profile",
            ),
          ],
        ),
      ),
    );
  }
}