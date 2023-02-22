import 'package:flutter/material.dart';
import 'package:telegramm/pages/navigationopages/home_screen.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => SearchPageState();
}

class SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Color.fromARGB(255, 43, 41, 41),
          ),
          onPressed: () {
            Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => const HomeScreen()));
          },
        ),
        // The search area here
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        title: Container(
          width: double.infinity,
          height: 40,
          decoration: BoxDecoration(
              //color: Colors.white,
              borderRadius: BorderRadius.circular(5)),
          child: Center(
            child: TextField(
              showCursor: true,
              decoration: InputDecoration(
                  suffixIcon: IconButton(
                    icon: const Icon(Icons.clear),
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const SearchPage()));
                    },
                  ),
                  hintText: 'Search',
                  border: InputBorder.none),
            ),
          ),
        ),
      ),
      body: ListView(
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
