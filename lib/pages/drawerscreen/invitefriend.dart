import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class InviteFriends extends StatelessWidget {
  const InviteFriends({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(184, 133, 60, 145),
          leading: IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: const Icon(Icons.arrow_back)),
          title: Row(children: [
            const Text('Waitting for network',
                style: TextStyle(fontSize: 20, color: Colors.white)),
            AnimatedTextKit(repeatForever: true, animatedTexts: [
              TypewriterAnimatedText('...',
                  cursor: '',
                  textStyle: const TextStyle(fontSize: 20, color: Colors.white))
            ]),
          ]),
        ),
        body: Column(
          children: [
            const TextField(
              showCursor: true,
              cursorColor: Color.fromARGB(255, 130, 55, 143),
              decoration: InputDecoration(
                  hintText: 'Search contact', border: InputBorder.none),
            ),
            const Divider(
              height: 5,
            ),
            ListTile(
              leading: const Icon(Icons.share),
              onTap: () {
                // return Stack(
                //   children: [

                //   ],
                // );
              },
            ),
            SizedBox(
                height: 450,
                width: MediaQuery.of(context).size.width,
                child: const Center(
                  child: CircularProgressIndicator(
                    strokeWidth: 4,
                    color: Color.fromARGB(184, 133, 60, 145),
                  ),
                )),
            // Container(
            //   //alignment:AlignmentGeometry(),
            //   //margin: const EdgeInsets.only(top: 71),
            //   padding: const EdgeInsetsDirectional.only(start: 50, top: 10),
            //   height: MediaQuery.of(context).size.height * 0.1,
            //   width: MediaQuery.of(context).size.width,
            //   decoration: const BoxDecoration(
            //     color: Color.fromARGB(255, 4, 184, 10),
            //   ),
            //   child: const Text(
            //     'Select contacts to invite them  to telegram',
            //     style:
            //         TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
            //   ),
            // )
          ],
        ));
  }
}
