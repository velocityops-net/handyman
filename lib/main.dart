import 'package:flutter/material.dart';
import 'router/router_generator.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      onGenerateRoute: RouteGenerator.generateRoute,
      initialRoute: '/page1',
      // title: 'Flutter Demo',
      // theme: ThemeData(
      //   colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      //   useMaterial3: true,
      // ),
      // initialRoute: '/',
      // routes: {
      //   // When navigating to the "/" route, build the HomeScreen widget.
      //   '/': (context) => const WelcomePage(),
      //   // When navigating to the "/second" route, build the SecondScreen widget.
      //   '/second': (context) => const CreateAccountPage(),
      // },
    );
  }
}
