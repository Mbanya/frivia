import 'package:flutter/material.dart';
import 'package:frivia/pages/game_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Frivia',
      theme: ThemeData(
        fontFamily: 'Architects Daughter',
        scaffoldBackgroundColor: const Color.fromRGBO(
          31,
          31,
          31,
          1.0,
        ),
      ),
      home: GamePage(),
    );
  }
}
