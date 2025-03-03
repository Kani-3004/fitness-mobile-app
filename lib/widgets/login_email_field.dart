import 'package:flutter/material.dart';

class LoginEmailField extends StatelessWidget {
  final TextEditingController controller;

  const LoginEmailField({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        prefixIcon: const Icon(Icons.email_outlined, color: Colors.grey),
        hintText: 'Email',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide.none,
        ),
        filled: true,
        fillColor: const Color(0xFFF7F7F7),
      ),
      validator: (value) {
        final emailRegex =
            RegExp(r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$');
        if (value == null || value.isEmpty) {
          return "The Email field cannot be empty";
        }
        if (!emailRegex.hasMatch(value)) {
          return "Please enter a valid E-mail";
        }
        if (value != "pragadeeswaran@boodskap.io") {
          return "Incorrect Email";
        }
        return null;
      },
    );
  }
}
