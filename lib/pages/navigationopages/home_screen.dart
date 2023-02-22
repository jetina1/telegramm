import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:telegramm/pages/navigationopages/allchats.dart';
import 'package:telegramm/pages/navigationopages/favoritechat.dart';
import 'package:telegramm/pages/navigationopages/personalchat.dart';
import '../drawerscreen/calls.dart';
import '../drawerscreen/contact.dart';
import '../drawerscreen/invitefriend.dart';
import '../drawerscreen/newgroup.dart';
import '../drawerscreen/peoplenearby.dart';
import '../drawerscreen/savedmessage.dart';
import '../drawerscreen/settings.dart';
import '../drawerscreen/telegramfeatures.dart';
import 'darkhomescreen.dart';
import 'package:telegramm/pages/navigationopages/search_page.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  @override
  State<HomeScreen> createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
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
                    child: IconButton(
                        icon: const Icon(Icons.search),
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const SearchPage()));
                        }),
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
                          image: AssetImage("assets/images/cc.jpg"),
                          fit: BoxFit.cover),
                    ),
                    currentAccountPicture: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            PageTransition(
                                duration: const Duration(
                                  seconds: 1,
                                ),
                                type: PageTransitionType.topToBottom,
                                child: const Settings()));
                      },
                      child: const CircleAvatar(
                        backgroundImage: AssetImage('assets/images/tt.jpg'),
                      ),
                    ),
                    otherAccountsPictures: [
                      IconButton(
                        icon: const Icon(
                          Icons.brightness_2,
                          color: Colors.white,
                          size: 25,
                        ),
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const DarkHomeScreen()));
                        },
                      ),
                    ],
                    arrowColor: Colors.white,
                    onDetailsPressed: () {},
                  ),
                  Column(
                    children: [
                      ListTile(
                        leading: const Icon(Icons.people),
                        title: const Text('New Group'),
                        onTap: () {
                          Navigator.push(
                              context,
                              PageTransition(
                                  duration: const Duration(
                                    seconds: 2,
                                  ),
                                  type: PageTransitionType.fade,
                                  child: const NewGroup()));
                        },
                      ),
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
                              builder: (context) => PeopleNearby(),
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

//   Widget buildPage(String text, ListTile x) => Column(children: [
//         Text(
//           text,
//           style: const TextStyle(fontSize: 20),
//         ),
//         x,
//       ]);
}
