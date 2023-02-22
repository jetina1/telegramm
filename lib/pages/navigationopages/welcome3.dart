import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:telegramm/pages/navigationopages/home_screen.dart';

class Welcome3 extends StatefulWidget {
  const Welcome3({super.key});

  @override
  State<Welcome3> createState() => Welcome3State();
}

class Welcome3State extends State<Welcome3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: GestureDetector(
        onTap: () {
          Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => const HomeScreen()));
        },
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Lottie.network(
              'https://assets5.lottiefiles.com/temp/lf20_JJiHnB.json'),
        ]),
      ),
    );
  }
}
