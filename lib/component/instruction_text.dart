import 'package:flutter/material.dart';

class InstructionTextComponent extends StatelessWidget {
  final String instructionText;

  const InstructionTextComponent({super.key, required this.instructionText});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(10, 10, 20, 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const CircleAvatar(
            backgroundColor: Color.fromARGB(255, 89, 88, 88),
            radius: 8,
          ),
          Flexible(
            child: Container(
              margin: const EdgeInsets.only(left: 5),
              child:
                  Text(instructionText, style: const TextStyle(fontSize: 18)),
            ),
          )
        ],
      ),
    );
  }
}
