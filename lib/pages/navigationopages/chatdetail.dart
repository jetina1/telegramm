import 'package:lottie/lottie.dart';
import 'package:flutter/material.dart';

class ChatDetail extends StatefulWidget {
  const ChatDetail({super.key});

  @override
  State<ChatDetail> createState() => _ChatDetailState();
}

class _ChatDetailState extends State<ChatDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(184, 133, 60, 145),
      ),
      body: Center(
        child: Lottie.network(
            'https://assets7.lottiefiles.com/packages/lf20_mNvu7WUM7W.json'),
      ),
    );
  }
}
