import 'package:flutter/material.dart';

class SavedMessage extends StatelessWidget {
  const SavedMessage({super.key});

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
