import 'package:flutter/material.dart';

class CustomTextDiscord extends StatelessWidget {
  final String title;
  final String subtitle;
  final Color titleColor;    // <-- Tambahan parameter warna title
  final Color subtitleColor; // <-- Tambahan parameter warna subtitle

  const CustomTextDiscord({
    super.key,
    required this.title,
    required this.subtitle,
    this.titleColor = Colors.white,            // Default warna putih kalau tidak diisi
    this.subtitleColor = const Color(0xFFb9bbbe), // Default warna silver ala Discord
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Icon(Icons.discord, size: 88, color: Colors.white),
        const SizedBox(height: 10),
        Text(
          title,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 40,
            fontWeight: FontWeight.w900,
            color: titleColor, // <-- Menggunakan variabel warna title
            letterSpacing: 1.2,
            height: 1.2,
          ),
        ),
        const SizedBox(height: 12),
        Text(
          subtitle,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 20,
            color: subtitleColor, // <-- Menggunakan variabel warna subtitle
            height: 1.4,
          ),
        ),
      ],
    );
  }
}