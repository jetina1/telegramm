import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

import '../navigationopages/qrpage.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  // ignore: override_on_non_overriding_member
  var top = 0.0;
  // ignore: annotate_overrides
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      body: CustomScrollView(slivers: [
        SliverAppBar(
          //stretch: true,
          //primary: false,
          pinned: true,
          backgroundColor: const Color.fromARGB(184, 133, 60, 145),
          expandedHeight: 320,
          actions: [
            IconButton(
              icon: const Icon(Icons.qr_code),
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const Qrpage()));
              },
            ),
            IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
            IconButton(
                onPressed: () {}, icon: const Icon(Icons.more_vert_outlined)),
          ],
          flexibleSpace: LayoutBuilder(
            builder: (ctx, cons) {
              top = cons.biggest.height;
              return FlexibleSpaceBar(
                centerTitle: true,
                title: AnimatedOpacity(
                  duration: const Duration(milliseconds: 100),
                  opacity: top <= 150 ? 1.00 : 00,
                  child: Row(
                    children: const [
                      SizedBox(
                        width: 12,
                      ),
                      CircleAvatar(
                        backgroundImage: AssetImage(
                          'assets/images/tt.jpg',
                        ),
                      ),
                      SizedBox(
                        width: 12,
                      ),
                    ],
                  ),
                ),
                stretchModes: const [
                  StretchMode.zoomBackground,
                ],
                background: Image.asset(
                  'assets/images/tt.jpg',
                  fit: BoxFit.cover,
                ),
              );
            },
          ),
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(0),
            child:
                Column(mainAxisAlignment: MainAxisAlignment.start, children: [
              AnimatedTextKit(repeatForever: true, animatedTexts: [
                TypewriterAnimatedText(
                    cursor: '',
                    '∙∙∙∙∙·▫▫ᵒᴼᵒ Je Tinaᵒᴼᵒ▫▫·∙∙∙∙∙',
                    textStyle:
                        const TextStyle(fontSize: 20, color: Colors.white))
              ]),
              const Text('online',
                  style: TextStyle(color: Colors.white, fontSize: 15))
            ]),
          ),
        ),
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Card(
                child: Column(
                  children: const [
                    Text(
                      'Account',
                      style: TextStyle(
                          color: Color.fromARGB(255, 102, 17, 117),
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.start,
                    ),
                    ListTile(
                      title: Text(
                        '+251920128232',
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(
                        'Tap to change phone number',
                        style: TextStyle(
                            color: Color.fromARGB(255, 146, 143, 143)),
                      ),
                    ),
                    ListTile(
                      iconColor: Colors.white,
                      title: Text(
                        '@Jerrytuaa',
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(
                        'Username',
                        style: TextStyle(
                            color: Color.fromARGB(255, 146, 143, 143)),
                      ),
                    ),
                    Divider(
                      height: 10,
                    ),
                    ListTile(
                      title: Text(
                        'None',
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.w400),
                      ),
                      subtitle: Text(
                        'Bio',
                        style: TextStyle(
                            color: Color.fromARGB(255, 146, 143, 143)),
                      ),
                    ),
                  ],
                ),
              ),
              const Divider(
                height: 10,
              ),
              Card(
                child: Column(
                  children: const [
                    Text(
                      'Settings',
                      style: TextStyle(
                          color: Color.fromARGB(255, 102, 17, 117),
                          fontWeight: FontWeight.bold),
                    ),
                    ListTile(
                      leading: Icon(Icons.notifications),
                      title: Text(
                        'Notification and Sounds',
                      ),
                    ),
                    ListTile(
                      leading: Icon(Icons.lock),
                      title: Text(
                        'Privacy and Security',
                      ),
                    ),
                    ListTile(
                      leading: Icon(Icons.incomplete_circle_rounded),
                      title: Text(
                        'Data and Storage',
                      ),
                    ),
                    ListTile(
                      leading: Icon(Icons.chat_bubble_outline),
                      title: Text(
                        'Chat Setting',
                      ),
                    ),
                    ListTile(
                      leading: Icon(Icons.emoji_emotions),
                      title: Text(
                        'Stikers and Emoji',
                      ),
                    ),
                    ListTile(
                      leading: Icon(Icons.folder_outlined),
                      title: Text(
                        'Chat Folder',
                      ),
                    ),
                    ListTile(
                      leading: Icon(Icons.devices_other),
                      title: Text(
                        'Devices',
                      ),
                    ),
                    ListTile(
                      leading: Icon(Icons.language),
                      title: Text(
                        'Language',
                      ),
                    ),
                  ],
                ),
              ),
              const Divider(
                height: 10,
              ),
              Card(
                child: Column(children: const [
                  ListTile(
                    leading: Icon(
                      Icons.star_half_sharp,
                      color: Colors.purple,
                    ),
                    title: Text('Telegram Premium'),
                  ),
                  Divider(
                    height: 10,
                  ),
                  Text('Help',
                      style: TextStyle(
                          color: Color.fromARGB(255, 102, 17, 117),
                          fontWeight: FontWeight.bold)),
                  ListTile(
                    leading: Icon(Icons.messenger_outline_outlined),
                    title: Text('Ask a Question'),
                  ),
                  ListTile(
                    leading: Icon(Icons.question_mark_rounded),
                    title: Text(' Telegram FAQ'),
                  ),
                  ListTile(
                    leading: Icon(Icons.policy_outlined),
                    title: Text(' Privacy Policy'),
                  ),
                ]),
              ),
              const Text(
                textAlign: TextAlign.center,
                'Telegram for Android v9.4.2(3106) store bundled    armeabi-v7a armeabi',
                style: TextStyle(
                  color: Color.fromARGB(255, 60, 58, 58),
                ),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
