import 'package:flutter/material.dart';

class DarkHomeScreen extends StatefulWidget {
  const DarkHomeScreen({super.key});

  @override
  State<DarkHomeScreen> createState() => DarkHomeScreenState();
}

class DarkHomeScreenState extends State<DarkHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 26, 26, 26),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 23, 10, 10),
      ),
    );
  }
}
