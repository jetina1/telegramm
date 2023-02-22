import 'package:flutter/material.dart';
import 'package:telegramm/pages/navigationopages/welcome3.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Telegram',
      theme: ThemeData(
        backgroundColor: const Color.fromARGB(184, 133, 60, 145),
        primaryColor: const Color.fromARGB(184, 133, 60, 145),
      ),
      home: const Welcome3(),
    );
  }
}
