import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class TelegramFeature extends StatelessWidget {
  const TelegramFeature({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(184, 133, 60, 145),
        ),
        body: Center(
          child: Lottie.network(
              'https://assets5.lottiefiles.com/temp/lf20_JJiHnB.json'),
        ));
  }
}
