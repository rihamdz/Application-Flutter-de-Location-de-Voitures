import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class textfield extends StatelessWidget {
  final controller;
  final String hintText;
  final bool obscureText;
  final String image;

  const textfield({
    super.key,
    required this.controller,
    required this.hintText,
    required this.obscureText,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 52,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 25.0),
          child: TextField(
            controller: controller,
            obscureText: obscureText,
            decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(6),
                borderSide: BorderSide(color: Color(0xffA9A9A9)),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Color(0xffA9A9A9)),
              ),
              fillColor: Colors.white,
              filled: true,
              hintText: hintText,
              hintStyle: TextStyle(color: Colors.grey[500]),
              prefixIcon: Image.asset(image),
            ),
          ),
        ));
  }
}
