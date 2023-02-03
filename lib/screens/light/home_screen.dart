import 'package:flutter/material.dart';
import 'package:telegramm/pages/mainpage/allchats.dart';
import 'package:telegramm/pages/mainpage/favoritechat.dart';
import 'package:telegramm/pages/mainpage/personalchat.dart';
//import 'package:telegramm/pages/drawerpages/calls.dart';
//import 'package:telegramm/pages/drawerpages/contact.dart';
//import 'package:telegramm/pages/drawerpages/invitefriend.dart';
//import 'package:telegramm/pages/drawerpages/newgroup.dart';
//import 'package:telegramm/pages/drawerpages/peoplenearby.dart';
//import 'package:telegramm/pages/drawerpages/savedmessage.dart';
//import 'package:telegramm/pages/drawerpages/settings.dart';
//import 'package:telegramm/pages/drawerpages/telegramfeatures.dart';

import '../../pages/drawerscreen/calls.dart';
import '../../pages/drawerscreen/contact.dart';
import '../../pages/drawerscreen/invitefriend.dart';
import '../../pages/drawerscreen/newgroup.dart';
import '../../pages/drawerscreen/peoplenearby.dart';
import '../../pages/drawerscreen/savedmessage.dart';
import '../../pages/drawerscreen/settings.dart';
import '../../pages/drawerscreen/telegramfeatures.dart';

//import '../../pages/search_page.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  @override
  State<HomeScreen> createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  //final List<String> entry = ['a', 'b', 'c', 'd', 'e', 'f', 'g'];
  //var _icon = Icons.brightness_2;
  @override
  Widget build(BuildContext context) => DefaultTabController(
        length: 3,
        // ignore: sort_child_properties_last
        child: Scaffold(
            appBar: AppBar(
              backgroundColor: const Color.fromARGB(184, 133, 60, 145),
              title: const Text('Telegram'),
              actions: [
                Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: GestureDetector(
                    /* onTap: () =>  Navigator.push(context, MaterialPageRoute(
                            // ignore: prefer_const_constructors
                            builder:SearchPage())),*/
                    child: IconButton(
                        icon: const Icon(Icons.search), onPressed: () {}),
                  ),
                )
                //
              ],
              bottom: const TabBar(
                labelStyle: TextStyle(
                  fontSize: 18,
                ),
                indicatorColor: Colors.white,
                indicatorWeight: 4.0,
                tabs: [
                  Tab(
                    text: ('All'),
                  ),
                  Tab(
                    text: ('Personal'),
                  ),
                  Tab(
                    text: ('favorite'),
                  )
                ],
              ),
            ),
            drawer: Drawer(
              backgroundColor: const Color.fromARGB(255, 222, 212, 212),
              child: ListView(
                children: [
                  UserAccountsDrawerHeader(
                      accountName: const Text('Jerusalem tina'),
                      accountEmail: const Text('0920128232'),
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("images/background.jpg"),
                            fit: BoxFit.fill),
                      ),
                      currentAccountPicture: const CircleAvatar(
                        backgroundImage: AssetImage('images/je.jpg'),
                      ),
                      //otherAccountsPictures: const [],
                      //arrowColor: Colors.white,
                      // onDetailsPressed: () {},
                      otherAccountsPictures: [
                        IconButton(
                          icon: const Icon(
                            Icons.brightness_2,
                            color: Colors.white,
                            size: 25,
                          ),
                          onPressed: () {},
                        ),
                      ]),

                  /*otherAccountsPictures: [
              IconButton(
                icon: Icon(Icons.brightness_2
                  color: Colors.white,
                  size: 25,
                ),
                onPressed: () {
        
                  if (_icon == Icons.brightness_2) {
                    _icon = Icons.wb_sunny,
                    Navigator.push(context,MaterialPageRoute(builder: (context) => HomeScreenDark()),);
        
        
                  } else {
                    _icon = Icons.brightness_2;
        
                  }
        
                },
              */

                  Column(
                    children: [
                      ListTile(
                          leading: const Icon(Icons.people),
                          title: const Text('New Group'),
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const NewGroup(),
                            ));
                          }),
                      ListTile(
                          leading: const Icon(Icons.person),
                          title: const Text('contact'),
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const Contact(),
                            ));
                          }),
                      ListTile(
                          leading: const Icon(Icons.call_outlined),
                          title: const Text('calls'),
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const Calls(),
                            ));
                          }),
                      ListTile(
                          leading: const Icon(Icons.people),
                          title: const Text('people nearby'),
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const PeopleNearby(),
                            ));
                          }),
                      ListTile(
                          leading: const Icon(Icons.bookmark),
                          title: const Text('saved message'),
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const SavedMessage(),
                            ));
                          }),
                      ListTile(
                          leading: const Icon(Icons.settings_rounded),
                          title: const Text('settings'),
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const Settings(),
                            ));
                          }),
                      const Divider(),
                      ListTile(
                          leading: const Icon(Icons.person_add),
                          title: const Text('invite friend'),
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const InviteFriends(),
                            ));
                          }),
                      ListTile(
                          leading: const Icon(Icons.question_mark_outlined),
                          title: const Text('Telegram Features'),
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const TelegramFeature(),
                            ));
                          }),
                    ],
                  )
                ],
              ),
            ),
            floatingActionButton: FloatingActionButton(
              backgroundColor: const Color.fromARGB(184, 133, 60, 145),
              onPressed: () {},
              child: const Icon(
                Icons.create,
                color: Colors.white,
              ),
            ),
            body: const TabBarView(children: [
              Allchatlist(),
              Personalchatlist(),
              Favoritechatlist(),
            ])),
      );

  Widget buildPage(String text, ListTile x) => Column(children: [
        Text(
          text,
          style: const TextStyle(fontSize: 20),
        ),
        x,
      ]);
}
