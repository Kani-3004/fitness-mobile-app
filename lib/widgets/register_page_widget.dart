import 'package:flutter/material.dart';

class RegisterPageWidget extends StatefulWidget {
  const RegisterPageWidget({super.key});

  @override
  State<RegisterPageWidget> createState() => _RegisterPageWidgetState();
}

class _RegisterPageWidgetState extends State<RegisterPageWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color(0xffC558F2),
            Color(0xffE18CD9)
          ]
        ),
        borderRadius: BorderRadius.circular(10)
      ),
      child: Column(
        children: [
          Image.asset('assets/images/improve_shape.png')
        ],
      ),
    );
  }
}