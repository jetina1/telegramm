import 'package:flutter/material.dart';

class Calls extends StatelessWidget {
  const Calls({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(184, 133, 60, 145),
        title: const Text('Calls'),
        actions: [
          IconButton(
              onPressed: () {}, icon: const Icon(Icons.more_vert_outlined))
        ],
      ),
      body: const Center(
          child: Text(
        'calllllllllllllllllllllinggggggggggggggg',
      )),
      floatingActionButton: FloatingActionButton(
          backgroundColor: const Color.fromARGB(255, 157, 89, 176),
          onPressed: () {},
          child: const Icon(
            Icons.call,
            color: Colors.white,
          )),
    );
  }
}
