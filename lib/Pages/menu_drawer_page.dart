import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../Controller/main_menu_controller.dart';

class MenuDrawerPage extends StatelessWidget {
  const MenuDrawerPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Ambil controller yang sudah di-put di MainMenuPage
    final MainMenuController mainMenuController = Get.find<MainMenuController>();

    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(color: Colors.yellow),
            child: Text(
              'Menu Navigasi',
              style: TextStyle(color: Colors.white, fontSize: 22),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text('Home'),
            onTap: () {
              mainMenuController.changePage(0); // Set ke tab Home
              Navigator.pop(context);          // Tutup drawer
            },
          ),
          ListTile(
            leading: const Icon(Icons.history),
            title: const Text('History'),
            onTap: () {
              mainMenuController.changePage(1); // Set ke tab History
              Navigator.pop(context);          // Tutup drawer
            },
          ),
          ListTile(
            leading: const Icon(Icons.person),
            title: const Text('Profile'),
            onTap: () {
              mainMenuController.changePage(2); // Set ke tab Profile
              Navigator.pop(context);          // Tutup drawer
            },
          ),
        ],
      ),
    );
  }
}