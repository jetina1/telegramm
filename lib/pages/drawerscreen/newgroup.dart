import 'package:flutter/material.dart';
import 'package:telegramm/pages/navigationopages/home_screen.dart';

class NewGroup extends StatelessWidget {
  const NewGroup({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //centerTitle: false,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => const HomeScreen()));
          },
        ),
        backgroundColor: const Color.fromARGB(184, 133, 60, 145),
        title: Column(children: const [
          Text(
            textAlign: TextAlign.start,
            "New Group",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
        ]),
        bottom: const PreferredSize(
          preferredSize: Size.fromHeight(8),
          child: Text(
            textAlign: TextAlign.start,
            "up to 200000 members",
            style: TextStyle(
              color: Color.fromARGB(255, 226, 224, 218),
            ),
          ),
        ),
      ),
      body: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
        Container(
          height: 50,
          width: MediaQuery.of(context).size.width,
          color: const Color.fromARGB(255, 244, 242, 238),
          child: const TextField(
            textAlign: TextAlign.start,
            showCursor: true,
            cursorHeight: 22,
            cursorColor: Color.fromARGB(184, 133, 60, 145),
            decoration: InputDecoration(
                hintStyle: TextStyle(
                    fontSize: 18, color: Color.fromARGB(255, 198, 192, 192)),
                contentPadding: EdgeInsets.only(left: 30),
                hintText: 'Who would you like to add ?',
                border: InputBorder.none),
          ),
        ),
      ]),
    );
  }
}
