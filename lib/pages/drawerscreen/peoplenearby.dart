import 'package:flutter/material.dart';

class PeopleNearby extends StatelessWidget {
  const PeopleNearby({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: const Color.fromARGB(184, 133, 60, 145),
      appBar: AppBar(
//        backgroundColor: Colors.transparent,
        backgroundColor: const Color.fromARGB(184, 229, 216, 231),
        elevation: 0,
        title: const Text("Title"),
      ),
      body: Center(
        child: Column(
          children: const [
            Text("Content"),
          ],
        ),
      ),
    );
  }
}
