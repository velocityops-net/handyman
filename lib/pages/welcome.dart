import 'package:flutter/material.dart';
import 'package:handyman_app/assets/strings.dart';
import '/component/custom_button.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            color: Colors.white,
            padding: const EdgeInsets.only(left: 30, right: 30, top: 100),
            child: Column(mainAxisSize: MainAxisSize.max, children: [
              Image.network(
                'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg',
                width: 50,
                height: 50,
              ),
              Container(
                margin: const EdgeInsets.only(top: 30),
                child: const Text(
                  Strings.welcomText,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 28,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                  margin: const EdgeInsets.only(top: 100),
                  child: CustomButton(
                    buttonText: Strings.signupText,
                    onPressed: () {
                      Navigator.pushNamed(context, '/page2');
                    },
                  )),
              Container(
                margin: const EdgeInsets.only(top: 20),
                child: TextButton(
                  onPressed: () {
                    //action
                  },
                  child: const Text(
                    Strings.signinText, //title
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ), //aligment
                  ),
                ),
              ),
              const Divider(
                height: 10,
                color: Colors.grey,
                thickness: 2,
              ),
              Container(
                margin: const EdgeInsets.only(top: 40),
                padding:
                    const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
                color: const Color.fromARGB(255, 241, 238, 238),
                child: const Text(
                  Strings.welcomeInfoText,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                  ),
                ),
              ),
            ])));
  }
}
