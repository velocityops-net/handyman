import 'package:flutter/material.dart';
import '/component/custom_button.dart';
import '/component/text_input.dart';
import '/component/instruction_text.dart';
import 'package:handyman_app/assets/strings.dart';

class CreateAccountPage extends StatelessWidget {
  const CreateAccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
            padding: const EdgeInsets.only(left: 30, right: 30, top: 100),
            decoration: const BoxDecoration(
              color: Colors.white,
            ),
            child: Column(children: [
              Container(
                margin: const EdgeInsets.only(top: 100),
                child: Text(Strings.createAccountText,
                    style: Theme.of(context).textTheme.headlineMedium),
              ),
              const TextInputComponent(
                labelText: Strings.emailText,
                hintText: Strings.enterEmailText,
              ),
              const TextInputComponent(
                labelText: Strings.passwordText,
                hintText: Strings.enterPasswordText,
                isSecureText: true,
              ),
              Container(
                  margin: const EdgeInsets.only(top: 20),
                  child: const Column(children: [
                    InstructionTextComponent(
                      instructionText: Strings.paswordConstraintTextOne,
                    ),
                    InstructionTextComponent(
                      instructionText: Strings.paswordConstraintTextTwo,
                    ),
                    InstructionTextComponent(
                      instructionText: Strings.paswordConstraintTextThree,
                    ),
                  ])),
              Expanded(
                  child: Container(
                margin: const EdgeInsets.only(bottom: 30),
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: CustomButton(
                    buttonText: Strings.continueText,
                    onPressed: () {
                      // Open Instagram App
                    },
                  ),
                ),
              ))
            ])));
  }
}
