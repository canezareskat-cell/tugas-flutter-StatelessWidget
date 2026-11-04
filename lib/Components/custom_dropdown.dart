import 'package:flutter/material.dart';

class CustomDropdown extends StatelessWidget {
  final TextEditingController controller;
  final String hint;

  const CustomDropdown({
    super.key, 
    required this.controller, 
    required this.hint
  });

  @override
  Widget build(BuildContext context) {
    return DropdownMenu<String>(
      controller: controller,
      hintText: hint,
      dropdownMenuEntries: const [
        DropdownMenuEntry(value: "Laki-laki", label: "Laki-laki"),
        DropdownMenuEntry(value: "Perempuan", label: "Perempuan"),
      ],
    );
  }
}