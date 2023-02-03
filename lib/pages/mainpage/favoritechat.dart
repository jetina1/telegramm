import 'package:flutter/material.dart';

class FavoriteChatModel {
  final String name;
  final String message;
  final String time;
  final String imgPath;
  final bool status;
  // final bool pinstatus;
  final int messNum;

  FavoriteChatModel({
    required this.name,
    required this.message,
    required this.time,
    required this.imgPath,
    required this.status,
    required this.messNum,
    //  required this.pinstatus,
  });
}

final List<FavoriteChatModel> favoriteitems = [
  FavoriteChatModel(
      name: 'saved',
      message: 'snt seat lay',
      time: '10:39',
      imgPath: 'images/tt.jpg',
      status: false,
      //pinstatus:true,
      messNum: 1),
  FavoriteChatModel(
      name: 'betty',
      message: 'snt seat lay',
      time: '10:39',
      imgPath: 'images/tt.jpg',
      status: true,
      //pinstatus:false,
      messNum: 2),
  FavoriteChatModel(
      name: 'jerry',
      message: 'love u bebe',
      time: '10:39',
      imgPath: 'images/cc.jpg',
      status: true,
      //pinstatus:false,
      messNum: 1),
  FavoriteChatModel(
      name: 'jerry twins ',
      message: 'anchi chigogit',
      time: 'Feb 12',
      imgPath: 'images/rem.jpg',
      status: false,
      //pinstatus:false,
      messNum: 1),
  FavoriteChatModel(
      name: 'bety twins',
      message: 'anchi arogit',
      time: '12:12',
      imgPath: 'images/ttt.jpg',
      status: false,
      //pinstatus:false,
      messNum: 20),
  FavoriteChatModel(
      name: 'betty class',
      message: 'mech nw mihonew',
      time: '6:11',
      imgPath: 'images/h.jpg',
      status: true,
      // pinstatus:false,
      messNum: 5),
  FavoriteChatModel(
      name: 'hanniyam ',
      message: 'bezii samnt',
      time: 'Jan 1',
      imgPath: 'images/background.jpg',
      status: true,
      // pinstatus:false,
      messNum: 5),
  FavoriteChatModel(
      name: 'Heven',
      message: 'yhuna',
      time: '4:00',
      imgPath: 'images/bff.jpg',
      status: true,
      // pinstatus:false,
      messNum: 4),
  FavoriteChatModel(
      name: 'Amar',
      message: 'ut sunt sequi',
      time: 'Dec 10',
      imgPath: 'images/je.jpg',
      status: false,
      //pinstatus:false,
      messNum: 2),
  FavoriteChatModel(
      name: 'Crstina',
      message: 'duzzzzzzzzzzzzzzzzzzzzzzzzzzz',
      time: '4:30',
      imgPath: 'images/bety.jpg',
      status: false,
      // pinstatus:false,
      messNum: 6),
  FavoriteChatModel(
      name: 'Devid',
      message: 'et laborum mollitia',
      time: '6:00',
      imgPath: 'images/je.jpg',
      status: true,
      // pinstatus:false,
      messNum: 4),
];

class Favoritechatlist extends StatefulWidget {
  const Favoritechatlist({super.key});

  @override
  State<Favoritechatlist> createState() => FavoritechatlistState();
}

class FavoritechatlistState extends State<Favoritechatlist> {
  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
      widthFactor: 1.0, // between 0 and 1
      heightFactor: 1.0,
      //  padding: const EdgeInsets.only(top: 10),
      child: ListView.separated(
          itemBuilder: (ctx, i) {
            return SizedBox(
              width: MediaQuery.of(context).size.width,
              child: ListTile(
                  contentPadding: const EdgeInsets.only(left: 10, right: 12),
                  leading: CircleAvatar(
                    radius: 28,
                    backgroundImage: AssetImage(favoriteitems[i].imgPath),
                  ),
                  title: favoriteitems[i].status
                      ? Text(
                          favoriteitems[i].name,
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        )
                      : Row(
                          children: [
                            Text(
                              favoriteitems[i].name,
                              style:
                                  const TextStyle(fontWeight: FontWeight.bold),
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
                                      ? const Color.fromARGB(184, 133, 60, 145)
                                      : Colors.grey[400],
                                  borderRadius: BorderRadius.circular(30)),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  '${favoriteitems[i].messNum}',
                                  style: const TextStyle(color: Colors.white),
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
    );
  }
}
