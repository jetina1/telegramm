import 'package:flutter/material.dart';
import 'package:telegramm/screens/light/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: const Color.fromARGB(184, 133, 60, 145),
      debugShowCheckedModeBanner: false,
      title: 'Telegram',
      theme: ThemeData(
        backgroundColor: const Color.fromARGB(184, 133, 60, 145),
        // primaryColor: Colors.purple,
      ),
      home: const HomeScreen(),
    );
  }
}
