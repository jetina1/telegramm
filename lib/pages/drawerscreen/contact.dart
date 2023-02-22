import 'package:flutter/material.dart';
import 'package:telegramm/pages/drawerscreen/invitefriend.dart';
import 'package:telegramm/pages/drawerscreen/peoplenearby.dart';

class Contact extends StatelessWidget {
  const Contact({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(184, 133, 60, 145),
          actions: [
            IconButton(
                onPressed: () {}, icon: const Icon(Icons.menu_open_sharp)),
            IconButton(onPressed: () {}, icon: const Icon(Icons.search))
          ],
        ),
        body: Column(children: [
          Card(
            child: Column(
              children: [
                InkWell(
                  child: ListTile(
                      leading: const Icon(Icons.person_add),
                      title: const Text('Ínvite Friends'),
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const InviteFriends()));
                      }),
                ),
                InkWell(
                  child: ListTile(
                      leading: const Icon(Icons.location_on_outlined),
                      title: const Text('Find People Nearby'),
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => PeopleNearby()));
                      }),
                )
              ],
            ),
          ),
          const Divider(
            height: 10,
          ),
        ]),
        floatingActionButton: FloatingActionButton(
            backgroundColor: const Color.fromARGB(255, 157, 89, 176),
            onPressed: () {},
            child: const Icon(
              Icons.person_add_alt,
              color: Colors.white,
            )),
      );
}
