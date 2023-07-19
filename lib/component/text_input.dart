import 'package:flutter/material.dart';

class TextInputComponent extends StatelessWidget {
  final String labelText;
  final String hintText;
  final bool isValid;
  final String errorText;
  final bool isSecureText;

  const TextInputComponent({
    super.key,
    required this.labelText,
    required this.hintText,
    this.isValid = false,
    this.isSecureText = false,
    this.errorText = '',
  });
  @override
  Widget build(BuildContext context) {
    return Material(
        child: Container(
            margin: const EdgeInsets.only(top: 30),
            child: SizedBox(
              child: TextField(
                obscureText: isSecureText,
                decoration: InputDecoration(
                  errorText: isValid ? errorText : null,
                  labelText: labelText,
                  labelStyle: const TextStyle(
                    color: Colors.black, //<-- SEE HERE
                  ),
                  border: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                  ),
                  focusedBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                  ),
                  hintText: hintText,
                ),
              ),
            )));
  }
}
