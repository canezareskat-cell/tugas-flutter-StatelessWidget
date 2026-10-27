import 'package:flutter/material.dart';

// Kita buat StatelessWidget kustom yang bisa dipakai untuk membungkus widget apa saja
class FadeAnimation extends StatelessWidget {
  final Widget child;
  final Duration duration;

  const FadeAnimation({
    Key? key,
    required this.child,
    this.duration = const Duration(milliseconds: 3000), // Default durasi 3 detik
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder<double>(
      tween: Tween<double>(begin: 0.0, end: 1.0),
      duration: duration,
      builder: (context, value, _) {
        return Opacity(
          opacity: value, // Efek muncul perlahan (Fade)
          child: Transform.translate(
            offset: Offset(0, 40 * (1 - value)), // Efek geser ke atas sejauh 40 pixel
            child: child, // Widget yang dibungkus akan muncul dengan efek fade dan geser
            // ini merupakan cara yang bagus untuk menambahkan animasi sederhana ke widget tanpa harus membuat StatefulWidget atau menggunakan AnimationController secara manual.
          ),
        );
      },
      child: child,
    );
  }
}