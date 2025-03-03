import 'package:flutter/material.dart';

class LoginPasswordField extends StatefulWidget {
  final TextEditingController controller;

  const LoginPasswordField({super.key, required this.controller});

  @override
  State<LoginPasswordField> createState() => _LoginPasswordFieldState();
}

class _LoginPasswordFieldState extends State<LoginPasswordField> {
  bool isObscure = true;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      obscureText: isObscure,
      decoration: InputDecoration(
        prefixIcon: const Icon(Icons.lock_outline, color: Colors.grey),
        hintText: 'Password',
        suffixIcon: IconButton(
          icon: Icon(isObscure ? Icons.visibility_off_outlined : Icons.visibility_outlined, color: Colors.grey),
          onPressed: () {
            setState(() {
              isObscure = !isObscure;
            });
          },
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide.none,
        ),
        filled: true,
        fillColor: const Color(0xFFF7F7F7),
      ),
      validator: (value) {
        final alphanumericRegex = RegExp(r'[A-Za-z\d]');
        if (value == null || value.isEmpty) {
          return "Password field cannot be empty";
        }
        if (value.split('').where((char) => alphanumericRegex.hasMatch(char)).length < 4) {
          return "Password must contain at least 4 alphanumeric characters.";
        }
        if (value != "welcome123") {
          return "Incorrect Password";
        }
        return null;
      },
    );
  }
}
