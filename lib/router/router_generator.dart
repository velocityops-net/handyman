import 'package:flutter/material.dart';
import 'package:handyman_app/pages/createAccount/create_account.dart';
import 'package:handyman_app/pages/welcome.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/page1':
        return MaterialPageRoute(builder: (_) => const WelcomePage());
      case '/page2':
        return MaterialPageRoute(builder: (_) => const CreateAccountPage());
      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (context) {
      return Scaffold(
        appBar: AppBar(title: const Text('True')),
        body: const Center(
          child: Text('page not found'),
        ),
      );
    });
  }
}
