import 'package:flutter/material.dart';
import 'package:canezares_flutter_rorrrrrr/Components/custom_button_discord.dart';

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

                Column(
                  children: const [
                    Icon(Icons.discord, size: 88, color: Colors.white),
                    SizedBox(height: 10),
                    Text(
                      'WELCOME TO\nDISCORD',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.w900,
                        color: Colors.white,
                        letterSpacing: 1.2,
                        height: 1.2,
                      ),
                    ),
                    SizedBox(height: 12),
                    Text(
                      'Hang out, play games, or just talk. Tap below to get started!',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 20,
                        color: Color(0xFFb9bbbe),
                        height: 1.4,
                      ),
                    ),
                  ],
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
