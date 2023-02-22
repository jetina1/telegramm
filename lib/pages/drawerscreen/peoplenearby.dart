import 'package:flutter/material.dart';
//import 'package:lottie/lottie.dart';
import 'package:telegramm/pages/navigationopages/home_screen.dart';
//import 'package:lottie/lottie.dart';

// ignore: must_be_immutable
class PeopleNearby extends StatelessWidget {
  PeopleNearby({super.key});
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          leading: IconButton(
            color: Colors.black,
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => const HomeScreen()),
              );
            },
            icon: const Icon(Icons.arrow_back),
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Stack(
                children: const [
                  CircleAvatar(
                    radius: 50,
                    child: Icon(Icons.location_on),
                    // backgroundImage: AssetImage('assets/images/location.png'),
                  ),
                ],
              ),
              Column(
                children: const [
                  Text(
                    'People Nearby',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Quick add people nearby who are also viewing this section and discover local group chat',
                    style: TextStyle(fontSize: 10),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Please turn on location service to enable this feature',
                    style: TextStyle(fontSize: 10),
                  ),
                ],
              ),
              ElevatedButton(
                onPressed: () {},
                child: const Text('Turn On'),
              )
            ],
          ),
        )

        // Lottie.network(
        //'https://assets6.lottiefiles.com/temp/lf20_EVDaJ0.json'));

        );
  }
}
