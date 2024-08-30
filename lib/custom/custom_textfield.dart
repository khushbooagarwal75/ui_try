import "package:flutter/material.dart";

class CustomTextfield extends StatelessWidget {
  const CustomTextfield({super.key, required this.label, required this.controller, required this.prefixIcon, required this.type});
  final String label;
  final TextInputType type;
  final TextEditingController controller;
  final prefixIcon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 28.0,vertical: 0),
      child: TextField(
        controller: controller,
        keyboardType: type,
        decoration: InputDecoration(
          prefixIcon: prefixIcon,
          hintText: label,
          filled: true,
          fillColor: Colors.deepOrange.shade50,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(15),borderSide: BorderSide(color: Colors.white)),
        ),
      ),
    );
  }
}
