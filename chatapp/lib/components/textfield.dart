import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final controller;
  final String hinttext;
  final bool obscuretext;

  const MyTextField(
      {super.key,
      required this.controller,
      required this.hinttext,
      required this.obscuretext});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0),
        child: TextField(
          controller: controller,
          obscureText: obscuretext,
          decoration: InputDecoration(
              enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.orange)),
              focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.orange)),
              fillColor: Colors.transparent,
              filled: true,
              hintText: hinttext,
              hintStyle: TextStyle(color: Colors.orange)),
        ));
  }
}
