import 'dart:developer';

import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String buttonText;
  final VoidCallback onPressed;
  const CustomButton(
      {super.key, required this.buttonText, required this.onPressed});
  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        backgroundColor: Colors.black,
        minimumSize: const Size(double.infinity, 50),
        padding: const EdgeInsets.symmetric(vertical: 16),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      ),
      onPressed: () {
        log("message");
        onPressed();
      },
      child: Text(
        buttonText,
        style: const TextStyle(color: Colors.white, fontSize: 18),
      ),
    );
  }
}
