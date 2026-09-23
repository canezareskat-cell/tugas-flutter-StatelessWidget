import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomTextKalkulator extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;

  const CustomTextKalkulator({
    super.key,
    required this.controller,
    required this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      keyboardType: TextInputType.number, // Memunculkan keyboard angka di HP
      inputFormatters: [FilteringTextInputFormatter.digitsOnly], // Hanya bisa ketik angka
      decoration: InputDecoration(
        hintText: hintText,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(8.0)),
      ),
    );
  }
}