import 'package:flutter/material.dart';

class AllChatModel {
  final String name;
  final String message;
  final String time;
  final String imgPath;
  final bool status;
  // final bool pinstatus;
  final int messNum;

  AllChatModel({
    required this.name,
    required this.message,
    required this.time,
    required this.imgPath,
    required this.status,
    required this.messNum,
    //  required this.pinstatus,
  });
}

final List<AllChatModel> allitems = [
  AllChatModel(
      name: 'HaHuJobs',
      message: 'snt seat lay',
      time: '10:39',
      imgPath: 'images/hahu.jpg',
      status: false,
      //pinstatus:true,
      messNum: 1),
  AllChatModel(
      name: 'saved',
      message: 'snt seat lay',
      time: '10:39',
      imgPath: 'images/tt.jpg',
      status: false,
      //pinstatus:true,
      messNum: 1),
  AllChatModel(
      name: 'Awaqi',
      message: 'snt seat lay',
      time: '10:39',
      imgPath: 'images/awaki.jpg',
      status: false,
      //pinstatus:true,
      messNum: 1),
  AllChatModel(
      name: 'betty',
      message: 'snt seat lay',
      time: '10:39',
      imgPath: 'images/tt.jpg',
      status: true,
      //pinstatus:false,
      messNum: 2),
  AllChatModel(
      name: 'FlutterDev',
      message:
          'https://www.reddit.com/r/FlutterDev/comments/10mov8m/why_to_use_different_backend_language/',
      time: '10:39',
      imgPath: 'images/flutter.jpg',
      status: true,
      //pinstatus:false,
      messNum: 2),
  AllChatModel(
      name: 'jerry',
      message: 'love u bebe',
      time: '10:39',
      imgPath: 'images/cc.jpg',
      status: true,
      //pinstatus:false,
      messNum: 1),
  AllChatModel(
      name: 'jerry twins ',
      message: 'anchi chigogit',
      time: 'Feb 12',
      imgPath: 'images/rem.jpg',
      status: false,
      //pinstatus:false,
      messNum: 1),
  AllChatModel(
      name: 'bety twins',
      message: 'anchi arogit',
      time: '12:12',
      imgPath: 'images/ttt.jpg',
      status: false,
      //pinstatus:false,
      messNum: 20),
  AllChatModel(
      name: 'betty class',
      message: 'mech nw mihonew',
      time: '6:11',
      imgPath: 'images/h.jpg',
      status: true,
      // pinstatus:false,
      messNum: 5),
  AllChatModel(
      name: 'hanniyam ',
      message: 'bezii samnt',
      time: 'Jan 1',
      imgPath: 'images/background.jpg',
      status: true,
      // pinstatus:false,
      messNum: 5),
  AllChatModel(
      name: 'Heven',
      message: 'yhuna',
      time: '4:00',
      imgPath: 'images/bff.jpg',
      status: true,
      // pinstatus:false,
      messNum: 4),
  AllChatModel(
      name: 'Amar',
      message: 'ut sunt sequi',
      time: 'Dec 10',
      imgPath: 'images/je.jpg',
      status: false,
      //pinstatus:false,
      messNum: 2),
  AllChatModel(
      name: 'Crstina',
      message: 'duzzzzzzzzzzzzzzzzzzzzzzzzzzz',
      time: '4:30',
      imgPath: 'images/bety.jpg',
      status: false,
      // pinstatus:false,
      messNum: 6),
  AllChatModel(
      name: 'Devid',
      message: 'et laborum mollitia',
      time: '6:00',
      imgPath: 'images/je.jpg',
      status: true,
      // pinstatus:false,
      messNum: 4),
];

class Allchatlist extends StatefulWidget {
  const Allchatlist({super.key});

  @override
  State<Allchatlist> createState() => AllchatlistState();
}

class AllchatlistState extends State<Allchatlist> {
  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
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
                contentPadding: const EdgeInsets.only(left: 10, right: 12),
                leading: CircleAvatar(
                  radius: 28,
                  backgroundImage: AssetImage(allitems[i].imgPath),
                ),
                title: allitems[i].status
                    ? Text(
                        allitems[i].name,
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      )
                    : Row(
                        children: [
                          Text(
                            allitems[i].name,
                            style: const TextStyle(fontWeight: FontWeight.bold),
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
                                    ? const Color.fromARGB(184, 133, 60, 145)
                                    : Colors.grey[400],
                                borderRadius: BorderRadius.circular(30)),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                '${allitems[i].messNum}',
                                style: const TextStyle(color: Colors.white),
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
    );
  }
}
