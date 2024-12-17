import 'package:flutter/material.dart';
import 'package:lab2/screens/home.dart';
// import 'package:new_flutter_project/screens/details.dart';
// import 'package:new_flutter_project/screens/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {

  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Jokes',
      initialRoute: '/',
      routes: {
        '/' : (context) => const Home(),
        // '/details': (context) => const Details(),
      },
    );
  }
}


