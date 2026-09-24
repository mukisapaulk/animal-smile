import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  final String placeHolder;
  TextEditingController? controller;
  InputField({super.key, required this.controller, required this.placeHolder});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.all(20),
        hintText: placeHolder,
        hintStyle: TextStyle(color: Colors.grey.shade500),
        //form color
        filled: true,
        fillColor: Colors.grey.shade100,
        enabledBorder: OutlineInputBorder(
          gapPadding: 8,
          borderSide: BorderSide(color: Colors.transparent),
          borderRadius: BorderRadius.circular(16),
        ),
      ),
    );
  }
}
