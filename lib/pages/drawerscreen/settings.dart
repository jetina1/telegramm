import 'package:flutter/material.dart';

import '../../screens/light/home_screen.dart';
import '../qrpage.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      //backgroundColor: const Color.fromARGB(184, 169, 165, 169),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color.fromARGB(184, 133, 60, 145),
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const HomeScreen(),
              ),
            );
          },
          icon: const Icon(Icons.arrow_back),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const Qrpage(),
                ),
              );
            },
            icon: const Icon(
              (Icons.qr_code),
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              (Icons.search_off_outlined),
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              (Icons.more_vert_outlined),
            ),
          ),
        ],
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              color: const Color.fromARGB(184, 133, 60, 145),
              height: 450,
            ),
            const Text("setting"),
          ],
        ),
      ),
    );
  }
}
