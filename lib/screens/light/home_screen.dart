import 'package:flutter/material.dart';
import 'package:telegramm/pages/mainpage/allchats.dart';
import 'package:telegramm/pages/mainpage/favoritechat.dart';
import 'package:telegramm/pages/mainpage/personalchat.dart';
import 'package:telegramm/pages/drawerpages/calls.dart';
import 'package:telegramm/pages/drawerpages/contact.dart';
import 'package:telegramm/pages/drawerpages/invitefriend.dart';
import 'package:telegramm/pages/drawerpages/newgroup.dart';
import 'package:telegramm/pages/drawerpages/peoplenearby.dart';
import 'package:telegramm/pages/drawerpages/savedmessage.dart';
import 'package:telegramm/pages/drawerpages/settings.dart';
import 'package:telegramm/pages/drawerpages/telegramfeatures.dart';

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
            // backgroundColor: Colors.white,
            appBar: AppBar(
              backgroundColor: const Color.fromARGB(184, 133, 60, 145),
              title: const Text('Telegram'),
              actions: [
                Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: IconButton(
                      icon: const Icon(Icons.search), onPressed: () {}),
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
                          title: const Text('calls'),
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
            body: TabBarView(children: [
              FractionallySizedBox(
                widthFactor: 1.0, // between 0 and 1
                heightFactor: 1.0,
                child:
                    //padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
                    ListView.separated(
                  itemCount: allitems.length,
                  itemBuilder: (ctx, i) {
                    return SizedBox(
                      width: MediaQuery.of(context).size.width,
                      child: ListTile(
                          contentPadding:
                              const EdgeInsets.only(left: 10, right: 12),
                          leading: CircleAvatar(
                            radius: 28,
                            backgroundImage: AssetImage(allitems[i].imgPath),
                          ),
                          title: allitems[i].status
                              ? Text(
                                  allitems[i].name,
                                  style: const TextStyle(
                                      fontWeight: FontWeight.bold),
                                )
                              : Row(
                                  children: [
                                    Text(
                                      allitems[i].name,
                                      style: const TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Icon(
                                      Icons.volume_off,
                                      size: 18,
                                      color: Colors.grey[400],
                                    )
                                  ],
                                ),
                          subtitle: Text(
                            allitems[i].message,
                            style: const TextStyle(color: Colors.grey),
                          ),
                          // ignore: unnecessary_null_comparison
                          trailing: allitems[i].messNum != null
                              ? Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Text(allitems[i].time),
                                    const SizedBox(
                                        // height: 7,
                                        ),
                                    Container(
                                      decoration: BoxDecoration(
                                          color: allitems[i].status
                                              ? const Color.fromARGB(
                                                  184, 133, 60, 145)
                                              : Colors.grey[400],
                                          borderRadius:
                                              BorderRadius.circular(30)),
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text(
                                          '${allitems[i].messNum}',
                                          style: const TextStyle(
                                              color: Colors.white),
                                        ),
                                      ),
                                    )
                                  ],
                                )
                              : Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Text(allitems[i].time),
                                    const SizedBox(
                                      height: 7,
                                      width: 15,
                                    ),
                                  ],
                                )),
                    );
                  },
                  separatorBuilder: (ctx, i) {
                    return const Divider();
                  },
                ),
              ),
              FractionallySizedBox(
                widthFactor: 1.0, // between 0 and 1
                heightFactor: 1.0,
                //padding: const EdgeInsets.only(top: 10),
                child: ListView.separated(
                    itemBuilder: (ctx, i) {
                      return SizedBox(
                        width: MediaQuery.of(context).size.width,
                        child: ListTile(
                            contentPadding:
                                const EdgeInsets.only(left: 10, right: 12),
                            leading: CircleAvatar(
                              radius: 28,
                              backgroundImage:
                                  AssetImage(personalitems[i].imgPath),
                            ),
                            title: personalitems[i].status
                                ? Text(
                                    personalitems[i].name,
                                    style: const TextStyle(
                                        fontWeight: FontWeight.bold),
                                  )
                                : Row(
                                    children: [
                                      Text(
                                        personalitems[i].name,
                                        style: const TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Icon(
                                        Icons.volume_mute,
                                        size: 18,
                                        color: Colors.grey[400],
                                      )
                                    ],
                                  ),
                            subtitle: Text(
                              personalitems[i].message,
                              style: const TextStyle(color: Colors.grey),
                            ),
                            // ignore: unnecessary_null_comparison
                            trailing: personalitems[i].messNum != null
                                ? Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Text(personalitems[i].time),
                                      const SizedBox(
                                          //height: 7,
                                          //width: 40,
                                          ),
                                      Container(
                                        decoration: BoxDecoration(
                                            color: personalitems[i].status
                                                ? const Color.fromARGB(
                                                    184, 133, 60, 145)
                                                : Colors.grey[400],
                                            borderRadius:
                                                BorderRadius.circular(30)),
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text(
                                            '${personalitems[i].messNum}',
                                            style: const TextStyle(
                                                color: Colors.white),
                                          ),
                                        ),
                                      )
                                    ],
                                  )
                                : Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Text(personalitems[i].time),
                                      const SizedBox(
                                        height: 7,
                                      ),
                                    ],
                                  )),
                      );
                    },
                    separatorBuilder: (ctx, i) {
                      return const Divider();
                    },
                    itemCount: personalitems.length),
              ),
              FractionallySizedBox(
                widthFactor: 1.0, // between 0 and 1
                heightFactor: 1.0,
                //  padding: const EdgeInsets.only(top: 10),
                child: ListView.separated(
                    itemBuilder: (ctx, i) {
                      return SizedBox(
                        width: MediaQuery.of(context).size.width,
                        child: ListTile(
                            contentPadding:
                                const EdgeInsets.only(left: 10, right: 12),
                            leading: CircleAvatar(
                              radius: 28,
                              backgroundImage:
                                  AssetImage(favoriteitems[i].imgPath),
                            ),
                            title: favoriteitems[i].status
                                ? Text(
                                    favoriteitems[i].name,
                                    style: const TextStyle(
                                        fontWeight: FontWeight.bold),
                                  )
                                : Row(
                                    children: [
                                      Text(
                                        favoriteitems[i].name,
                                        style: const TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Icon(
                                        Icons.volume_mute,
                                        size: 18,
                                        color: Colors.grey[400],
                                      )
                                    ],
                                  ),
                            subtitle: Text(
                              favoriteitems[i].message,
                              style: const TextStyle(color: Colors.grey),
                            ),
                            // ignore: unnecessary_null_comparison
                            trailing: favoriteitems[i].messNum != null
                                ? Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Text(favoriteitems[i].time),
                                      const SizedBox(
                                          // height: 7,
                                          ),
                                      Container(
                                        decoration: BoxDecoration(
                                            color: favoriteitems[i].status
                                                ? const Color.fromARGB(
                                                    184, 133, 60, 145)
                                                : Colors.grey[400],
                                            borderRadius:
                                                BorderRadius.circular(30)),
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text(
                                            '${favoriteitems[i].messNum}',
                                            style: const TextStyle(
                                                color: Colors.white),
                                          ),
                                        ),
                                      )
                                    ],
                                  )
                                : Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Text(favoriteitems[i].time),
                                      const SizedBox(
                                        height: 7,
                                      ),
                                    ],
                                  )),
                      );
                    },
                    separatorBuilder: (ctx, i) {
                      return const Divider();
                    },
                    itemCount: favoriteitems.length),
              ),
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
