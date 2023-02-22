import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Qrpage extends StatefulWidget {
  const Qrpage({super.key});

  @override
  State<Qrpage> createState() => _QrpageState();
}

class _QrpageState extends State<Qrpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        primary: false,
        backgroundColor: Colors.white70,
        body: CustomScrollView(slivers: [
          SliverAppBar(
            expandedHeight: 300,
            leading: IconButton(
                icon: const Icon(
                  Icons.arrow_back,
                ),
                onPressed: () {
                  Navigator.of(context).pop();
                }),
            flexibleSpace: FlexibleSpaceBar(
              background: Lottie.network(
                  'https://assets4.lottiefiles.com/private_files/lf30_ed9sjb8t.json'),

              // fit: BoxFit.cover,
            ),
          ),
        ])
        // BottomSheet(onClosing: (){}, builder:((context) =>  )) ]
        );
  }
}
