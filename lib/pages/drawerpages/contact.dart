import 'package:flutter/material.dart';

class Contact extends StatelessWidget {
  const Contact({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const Center(
          child: Text(
        'new group',
      )),
      floatingActionButton: FloatingActionButton(
          backgroundColor: const Color.fromARGB(255, 157, 89, 176),
          onPressed: () {},
          child: const Icon(
            Icons.person_add_alt,
            color: Colors.white,
          )),
    );
  }
}
