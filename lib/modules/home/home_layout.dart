import 'package:flutter/material.dart';
import 'package:test2/modules/account/account_screen.dart';
import 'package:test2/modules/community/community_screen.dart';
import 'package:test2/modules/relax/relax_screen.dart';

import '../chat/doctors_screen.dart';
import 'home_screen.dart';

class Home1 extends StatefulWidget {
  @override
  State<Home1> createState() => _Home1State();
}

class _Home1State extends State<Home1> {
  List<Widget> images = [
    MaterialButton(
        onPressed: () {},
        child: Image(
          image: AssetImage('assets/images/group1.png'),
        )),
    MaterialButton(
        onPressed: () {},
        child: Image(
          image: AssetImage('assets/images/Group2.png'),
        )),
    MaterialButton(
        onPressed: () {},
        child: Image(
          image: AssetImage('assets/images/Group3.png'),
        )),
    MaterialButton(
        onPressed: () {},
        child: Image(
          image: AssetImage('assets/images/Group4.png'),
        )),
  ];

  List<Widget> images2 = [
    Text(
      '       Talk Up Articles',
      style: TextStyle(fontSize: 20),
    ),
    MaterialButton(
        onPressed: () {},
        child: Image(
          image: AssetImage('assets/images/article.png'),
        )),
    MaterialButton(
        onPressed: () {},
        child: Image(
          image: AssetImage('assets/images/articl.png'),
        )),
    MaterialButton(
        onPressed: () {},
        child: Image(
          image: AssetImage('assets/images/articl1.png'),
        )),
    MaterialButton(
        onPressed: () {},
        child: Image(
          image: AssetImage('assets/images/articl2.png'),
        )),
  ];

  List<Widget> images3 = [
    MaterialButton(
        onPressed: () {},
        child: Image(
          image: AssetImage('assets/images/i1.png'),
        )),
    MaterialButton(
        onPressed: () {},
        child: Image(
          image: AssetImage('assets/images/i1.png'),
        )),
    MaterialButton(
        onPressed: () {},
        child: Image(
          image: AssetImage('assets/images/i1.png'),
        )),
  ];

  final List<Widget> screens = [
    Home(),
    Chat(),
    Community(),
    Relax(),
    Account(),
  ];

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          iconSize: 30,
          currentIndex: currentIndex,
          onTap: (index) {
            setState(() {
              currentIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(label: '', icon: Icon(Icons.home_filled)),
            BottomNavigationBarItem(
                label: '', icon: Icon(Icons.medical_information_outlined)),
            BottomNavigationBarItem(label: '', icon: Icon(Icons.add_circle)),
            BottomNavigationBarItem(
                label: '',
                icon: Image(image: AssetImage('assets/images/play.png'))),
            BottomNavigationBarItem(
                label: '', icon: Icon(Icons.account_circle_outlined)),
          ]),
    );
  }
}
