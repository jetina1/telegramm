import 'package:flutter/material.dart';

class TelegramFeature extends StatelessWidget {
  const TelegramFeature({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(184, 133, 60, 145),
      ),
      body: const Center(
          child: Text(
        'new group',
      )),
    );
  }
}
