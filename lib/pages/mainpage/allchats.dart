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
      name: 'saved',
      message: 'snt seat lay',
      time: '10:39',
      imgPath: 'images/tt.jpg',
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
