import 'package:canezares_flutter_rorrrrrr/Controller/main_menu_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainMenuPage extends StatelessWidget {
  MainMenuPage({super.key});

  final mainMenuController = Get.put(MainMenuController());

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
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
              activeIcon: Icon(Icons.home), // saat tab aktif
              label: "home",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.history_outlined),
              activeIcon: Icon(Icons.history), // saat tab aktif
              label: "history",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_outline),
              activeIcon: Icon(Icons.person), // saat tab aktif
              label: "profile",
            ),
          ],
        ),
      ),
    );
  }
} 