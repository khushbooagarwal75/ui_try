import "package:flutter/material.dart";

class CustomTextfield extends StatelessWidget {
  const CustomTextfield({super.key, required this.label, required this.controller, required this.prefixIcon});
  final String label;
  final TextEditingController controller;
  final prefixIcon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0,vertical: 0),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          prefixIcon: prefixIcon,
          hintText: label,
          filled: true,
          fillColor: Colors.deepOrange.shade100,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(15),borderSide: BorderSide(color: Colors.transparent)),
        ),
      ),
    );
  }
}
