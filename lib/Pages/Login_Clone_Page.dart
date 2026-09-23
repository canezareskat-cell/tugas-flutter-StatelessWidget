import 'package:flutter/material.dart';
import 'package:canezares_flutter_rorrrrrr/Components/custom_button_discord.dart';
import 'package:canezares_flutter_rorrrrrr/Components/custom_teks_discord.dart';

class LoginClonePage extends StatelessWidget {
  const LoginClonePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('asset/images/bg_dc.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 24.0,
              vertical: 16.0,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const SizedBox(height: 40),

                // PANGGIL KOMPONEN TEKS KUSTOM DI SINI
                // Karena warna default-nya sudah putih & silver, kodenya jadi bersih banget!
                const CustomTextDiscord(
                  title: 'WELCOME TO\nDISCORD',
                  subtitle: 'Hang out, play games, or just talk. Tap below to get started!',
                ),

                Column(
                  children: [
                    CustomButtonDiscord(
                      text: 'Register',
                      backgroundColor: Colors.white,
                      textColor: const Color(0xFF2e3136),
                      onPressed: () {
                        print("Tombol Register diklik");
                      },
                    ),
                    const SizedBox(height: 12),

                    CustomButtonDiscord(
                      text: 'Log In',
                      backgroundColor: const Color(0xFF2e3136).withOpacity(0.5),
                      textColor: Colors.white,
                      onPressed: () {
                        print("Tombol Log In diklik");
                      },
                    ),
                    const SizedBox(height: 20),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
