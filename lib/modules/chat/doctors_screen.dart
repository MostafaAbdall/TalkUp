import 'package:flutter/material.dart';

import 'doctor_profile_screen.dart';

bool isClicked = false;

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  final double appBarHeight = 100.0;
  final VoidCallback onPressed;
  final VoidCallback onClicked;
  Color mainColor = Color(0xff7fa6b7);

  MyAppBar({
    required this.onPressed,
    required this.onClicked,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: mainColor,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(30),
          bottomRight: Radius.circular(30),
        ),
      ),
      child: SafeArea(
        child: Row(
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.arrow_back_ios_new_sharp, color: Colors.white),
              onPressed: onPressed,
            ),
            SizedBox(
              width: 90,
            ),
            Expanded(
              child: isClicked
                  ? Text('')
                  : Text(
                      'Doctors',
                      style: TextStyle(fontSize: 15, color: Colors.white),
                    ),
            ),
            MaterialButton(
              onPressed: onClicked,
              child: isClicked
                  ? Container(
                      width: isClicked ? 190 : 0,
                      height: isClicked ? 50 : 0,
                      decoration: BoxDecoration(
                          boxShadow: [BoxShadow()],
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20),
                          ),
                          color: Colors.white),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: 10,
                          ),
                          CircleAvatar(
                            backgroundColor: Colors.white.withOpacity(0),
                            child: Image(
                              image: AssetImage('assets/images/morsi.png'),
                              width: 50,
                              height: 50,
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Mahmoud Morsi',
                                style: TextStyle(fontSize: 10),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                'Egypt',
                                style: TextStyle(fontSize: 10),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.settings_outlined,
                                size: 20,
                                color: Color(0xff7fa6b7),
                              )),
                        ],
                      ),
                    )
                  : Image(
                      image: AssetImage('assets/images/ph2.png'),
                      width: 40,
                      height: 50,
                    ),
            )
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(100.0);
}

class Chat extends StatefulWidget {
  @override
  State<Chat> createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  bool isExpanded = false;
  bool isLight = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: MyAppBar(
          onPressed: () {
            Navigator.pop(context);
          },
          onClicked: () {
            setState(() {
              isClicked = !isClicked;
            });
          },
        ),
        body: Stack(
          children: [
            SingleChildScrollView(
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/doctors.png'),
                    fit: BoxFit.fill,
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 30,
                    ),
                    Center(
                        child: Container(
                      width: 331,
                      height: 130,
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 1,
                              blurRadius: 5,
                              offset: Offset(0, 5),
                            ),
                          ],
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: 10,
                              ),
                              Container(
                                  width: 50,
                                  height: 50,
                                  child: CircleAvatar(
                                    backgroundColor:
                                        Colors.white.withOpacity(0),
                                    child: Image(
                                      image: AssetImage('assets/images/dr.png'),
                                      width: 50,
                                      height: 50,
                                    ),
                                  )),
                              SizedBox(
                                width: 5,
                              ),
                              Column(
                                children: [
                                  Text(
                                    'Sara Zidan',
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xff7fa6b7)),
                                  ),
                                  Container(
                                    width: 65,
                                    height: 17,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: Color(0xffF2ECE6),
                                    ),
                                    child: Center(
                                        child: Text(
                                      'Psychiatrist',
                                      style: TextStyle(
                                          fontSize: 10,
                                          color: Color(0xff7fa6b7)),
                                    )),
                                  )
                                ],
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: 20,
                              ),
                              Text(
                                "Master's degree in Neurology and Psychiatry",
                                style: TextStyle(
                                    fontSize: 11, color: Color(0xff7fa6b7)),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 3,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: 20,
                              ),
                              Text(
                                "Reviews",
                                style: TextStyle(
                                    fontSize: 11, color: Colors.black),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "315",
                                style: TextStyle(
                                    fontSize: 11, color: Color(0xff7fa6b7)),
                              ),
                            ],
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: 20,
                              ),
                              Image(
                                image: AssetImage('assets/images/star2.png'),
                                width: 61,
                                height: 10,
                              ),
                            ],
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: 20,
                              ),
                              Text(
                                "19 Mar, Sunday, 8:00 PM",
                                style: TextStyle(
                                    fontSize: 10, color: Color(0xff7fa6b7)),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "250 EGP",
                                style: TextStyle(
                                    fontSize: 10, color: Color(0xff7fa6b7)),
                              ),
                              Text(
                                "/30 mins",
                                style: TextStyle(
                                    fontSize: 10, color: Color(0xff1B3662)),
                              ),
                              SizedBox(
                                width: 30,
                              ),
                              Center(
                                child: Container(
                                  width: 65,
                                  height: 17,
                                  decoration: BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.6),
                                        spreadRadius: 1,
                                        blurRadius: 5,
                                        offset: Offset(0, 5),
                                      ),
                                    ],
                                  ),
                                  child: ElevatedButton(
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                DoctorProfile()),
                                      );
                                    },
                                    child: Text(
                                      'Book Session',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 5.0),
                                    ),
                                    style: ElevatedButton.styleFrom(
                                      primary: Color(0xff7fa6b7),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(30),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    )),
                    SizedBox(
                      height: 20,
                    ),
                    Center(
                        child: Container(
                      width: 331,
                      height: 130,
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 1,
                              blurRadius: 5,
                              offset: Offset(0, 5),
                            ),
                          ],
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: 10,
                              ),
                              Container(
                                  width: 50,
                                  height: 50,
                                  child: CircleAvatar(
                                    backgroundColor:
                                        Colors.white.withOpacity(0),
                                    child: Image(
                                      image: AssetImage('assets/images/dr.png'),
                                      width: 50,
                                      height: 50,
                                    ),
                                  )),
                              SizedBox(
                                width: 5,
                              ),
                              Column(
                                children: [
                                  Text(
                                    'Sara Zidan',
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xff7fa6b7)),
                                  ),
                                  Container(
                                    width: 65,
                                    height: 17,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: Color(0xffF2ECE6),
                                    ),
                                    child: Center(
                                        child: Text(
                                      'Psychiatrist',
                                      style: TextStyle(
                                          fontSize: 10,
                                          color: Color(0xff7fa6b7)),
                                    )),
                                  )
                                ],
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: 20,
                              ),
                              Text(
                                "Master's degree in Neurology and Psychiatry",
                                style: TextStyle(
                                    fontSize: 11, color: Color(0xff7fa6b7)),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 3,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: 20,
                              ),
                              Text(
                                "Reviews",
                                style: TextStyle(
                                    fontSize: 11, color: Colors.black),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "315",
                                style: TextStyle(
                                    fontSize: 11, color: Color(0xff7fa6b7)),
                              ),
                            ],
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: 20,
                              ),
                              Image(
                                image: AssetImage('assets/images/star2.png'),
                                width: 61,
                                height: 10,
                              ),
                            ],
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: 20,
                              ),
                              Text(
                                "19 Mar, Sunday, 8:00 PM",
                                style: TextStyle(
                                    fontSize: 10, color: Color(0xff7fa6b7)),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "250 EGP",
                                style: TextStyle(
                                    fontSize: 10, color: Color(0xff7fa6b7)),
                              ),
                              Text(
                                "/30 mins",
                                style: TextStyle(
                                    fontSize: 10, color: Color(0xff1B3662)),
                              ),
                              SizedBox(
                                width: 30,
                              ),
                              Center(
                                child: Container(
                                  width: 65,
                                  height: 17,
                                  decoration: BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.6),
                                        spreadRadius: 1,
                                        blurRadius: 5,
                                        offset: Offset(0, 5),
                                      ),
                                    ],
                                  ),
                                  child: ElevatedButton(
                                    onPressed: () {},
                                    child: Text(
                                      'Book Session',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 5.0),
                                    ),
                                    style: ElevatedButton.styleFrom(
                                      primary: Color(0xff7fa6b7),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(30),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    )),
                    SizedBox(
                      height: 20,
                    ),
                    Center(
                        child: Container(
                      width: 331,
                      height: 130,
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 1,
                              blurRadius: 5,
                              offset: Offset(0, 5),
                            ),
                          ],
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: 10,
                              ),
                              Container(
                                  width: 50,
                                  height: 50,
                                  child: CircleAvatar(
                                    backgroundColor:
                                        Colors.white.withOpacity(0),
                                    child: Image(
                                      image: AssetImage('assets/images/dr.png'),
                                      width: 50,
                                      height: 50,
                                    ),
                                  )),
                              SizedBox(
                                width: 5,
                              ),
                              Column(
                                children: [
                                  Text(
                                    'Sara Zidan',
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xff7fa6b7)),
                                  ),
                                  Container(
                                    width: 65,
                                    height: 17,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: Color(0xffF2ECE6),
                                    ),
                                    child: Center(
                                        child: Text(
                                      'Psychiatrist',
                                      style: TextStyle(
                                          fontSize: 10,
                                          color: Color(0xff7fa6b7)),
                                    )),
                                  )
                                ],
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: 20,
                              ),
                              Text(
                                "Master's degree in Neurology and Psychiatry",
                                style: TextStyle(
                                    fontSize: 11, color: Color(0xff7fa6b7)),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 3,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: 20,
                              ),
                              Text(
                                "Reviews",
                                style: TextStyle(
                                    fontSize: 11, color: Colors.black),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "315",
                                style: TextStyle(
                                    fontSize: 11, color: Color(0xff7fa6b7)),
                              ),
                            ],
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: 20,
                              ),
                              Image(
                                image: AssetImage('assets/images/star2.png'),
                                width: 61,
                                height: 10,
                              ),
                            ],
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: 20,
                              ),
                              Text(
                                "19 Mar, Sunday, 8:00 PM",
                                style: TextStyle(
                                    fontSize: 10, color: Color(0xff7fa6b7)),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "250 EGP",
                                style: TextStyle(
                                    fontSize: 10, color: Color(0xff7fa6b7)),
                              ),
                              Text(
                                "/30 mins",
                                style: TextStyle(
                                    fontSize: 10, color: Color(0xff1B3662)),
                              ),
                              SizedBox(
                                width: 30,
                              ),
                              Center(
                                child: Container(
                                  width: 65,
                                  height: 17,
                                  decoration: BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.6),
                                        spreadRadius: 1,
                                        blurRadius: 5,
                                        offset: Offset(0, 5),
                                      ),
                                    ],
                                  ),
                                  child: ElevatedButton(
                                    onPressed: () {},
                                    child: Text(
                                      'Book Session',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 5.0),
                                    ),
                                    style: ElevatedButton.styleFrom(
                                      primary: Color(0xff7fa6b7),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(30),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    )),
                    SizedBox(
                      height: 20,
                    ),
                    Center(
                        child: Container(
                      width: 331,
                      height: 130,
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 1,
                              blurRadius: 5,
                              offset: Offset(0, 5),
                            ),
                          ],
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: 10,
                              ),
                              Container(
                                  width: 50,
                                  height: 50,
                                  child: CircleAvatar(
                                    backgroundColor:
                                        Colors.white.withOpacity(0),
                                    child: Image(
                                      image: AssetImage('assets/images/dr.png'),
                                      width: 50,
                                      height: 50,
                                    ),
                                  )),
                              SizedBox(
                                width: 5,
                              ),
                              Column(
                                children: [
                                  Text(
                                    'Sara Zidan',
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xff7fa6b7)),
                                  ),
                                  Container(
                                    width: 65,
                                    height: 17,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: Color(0xffF2ECE6),
                                    ),
                                    child: Center(
                                        child: Text(
                                      'Psychiatrist',
                                      style: TextStyle(
                                          fontSize: 10,
                                          color: Color(0xff7fa6b7)),
                                    )),
                                  )
                                ],
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: 20,
                              ),
                              Text(
                                "Master's degree in Neurology and Psychiatry",
                                style: TextStyle(
                                    fontSize: 11, color: Color(0xff7fa6b7)),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 3,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: 20,
                              ),
                              Text(
                                "Reviews",
                                style: TextStyle(
                                    fontSize: 11, color: Colors.black),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "315",
                                style: TextStyle(
                                    fontSize: 11, color: Color(0xff7fa6b7)),
                              ),
                            ],
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: 20,
                              ),
                              Image(
                                image: AssetImage('assets/images/star2.png'),
                                width: 61,
                                height: 10,
                              ),
                            ],
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: 20,
                              ),
                              Text(
                                "19 Mar, Sunday, 8:00 PM",
                                style: TextStyle(
                                    fontSize: 10, color: Color(0xff7fa6b7)),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "250 EGP",
                                style: TextStyle(
                                    fontSize: 10, color: Color(0xff7fa6b7)),
                              ),
                              Text(
                                "/30 mins",
                                style: TextStyle(
                                    fontSize: 10, color: Color(0xff1B3662)),
                              ),
                              SizedBox(
                                width: 30,
                              ),
                              Center(
                                child: Container(
                                  width: 65,
                                  height: 17,
                                  decoration: BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.6),
                                        spreadRadius: 1,
                                        blurRadius: 5,
                                        offset: Offset(0, 5),
                                      ),
                                    ],
                                  ),
                                  child: ElevatedButton(
                                    onPressed: () {},
                                    child: Text(
                                      'Book Session',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 5.0),
                                    ),
                                    style: ElevatedButton.styleFrom(
                                      primary: Color(0xff7fa6b7),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(30),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    )),
                    SizedBox(
                      height: 20,
                    ),
                    Center(
                        child: Container(
                      width: 331,
                      height: 130,
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 1,
                              blurRadius: 5,
                              offset: Offset(0, 5),
                            ),
                          ],
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: 10,
                              ),
                              Container(
                                  width: 50,
                                  height: 50,
                                  child: CircleAvatar(
                                    backgroundColor:
                                        Colors.white.withOpacity(0),
                                    child: Image(
                                      image: AssetImage('assets/images/dr.png'),
                                      width: 50,
                                      height: 50,
                                    ),
                                  )),
                              SizedBox(
                                width: 5,
                              ),
                              Column(
                                children: [
                                  Text(
                                    'Sara Zidan',
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xff7fa6b7)),
                                  ),
                                  Container(
                                    width: 65,
                                    height: 17,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: Color(0xffF2ECE6),
                                    ),
                                    child: Center(
                                        child: Text(
                                      'Psychiatrist',
                                      style: TextStyle(
                                          fontSize: 10,
                                          color: Color(0xff7fa6b7)),
                                    )),
                                  )
                                ],
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: 20,
                              ),
                              Text(
                                "Master's degree in Neurology and Psychiatry",
                                style: TextStyle(
                                    fontSize: 11, color: Color(0xff7fa6b7)),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 3,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: 20,
                              ),
                              Text(
                                "Reviews",
                                style: TextStyle(
                                    fontSize: 11, color: Colors.black),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "315",
                                style: TextStyle(
                                    fontSize: 11, color: Color(0xff7fa6b7)),
                              ),
                            ],
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: 20,
                              ),
                              Image(
                                image: AssetImage('assets/images/star2.png'),
                                width: 61,
                                height: 10,
                              ),
                            ],
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: 20,
                              ),
                              Text(
                                "19 Mar, Sunday, 8:00 PM",
                                style: TextStyle(
                                    fontSize: 10, color: Color(0xff7fa6b7)),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "250 EGP",
                                style: TextStyle(
                                    fontSize: 10, color: Color(0xff7fa6b7)),
                              ),
                              Text(
                                "/30 mins",
                                style: TextStyle(
                                    fontSize: 10, color: Color(0xff1B3662)),
                              ),
                              SizedBox(
                                width: 30,
                              ),
                              Center(
                                child: Container(
                                  width: 65,
                                  height: 17,
                                  decoration: BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.6),
                                        spreadRadius: 1,
                                        blurRadius: 5,
                                        offset: Offset(0, 5),
                                      ),
                                    ],
                                  ),
                                  child: ElevatedButton(
                                    onPressed: () {},
                                    child: Text(
                                      'Book Session',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 5.0),
                                    ),
                                    style: ElevatedButton.styleFrom(
                                      primary: Color(0xff7fa6b7),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(30),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    )),
                    SizedBox(
                      height: 40,
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
                top: 0,
                left: 154,
                child: Container(
                  width: isClicked ? 190 : 0,
                  height: isClicked ? 170 : 0,
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.6),
                          spreadRadius: 1,
                          blurRadius: 5,
                          offset: Offset(0, 5),
                        )
                      ],
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20),
                      ),
                      color: Colors.white),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        height: 25,
                        child: Row(
                          children: [
                            //SizedBox(width: 5,),
                            MaterialButton(
                                height: 10,
                                onPressed: () {},
                                child: Text(
                                  'Profile settings',
                                  style: TextStyle(
                                      fontSize: 11,
                                      color: Color(0xff7fa6b7),
                                      decoration: TextDecoration.underline),
                                )),
                          ],
                        ),
                      ),
                      Container(
                        height: 25,
                        child: Row(
                          children: [
                            //SizedBox(width: 5,),
                            MaterialButton(
                                height: 10,
                                onPressed: () {},
                                child: Text(
                                  'Language',
                                  style: TextStyle(
                                      fontSize: 11,
                                      color: Color(0xff7fa6b7),
                                      decoration: TextDecoration.underline),
                                )),
                          ],
                        ),
                      ),
                      Container(
                        height: 25,
                        child: Row(
                          children: [
                            //SizedBox(width: 5,),
                            MaterialButton(
                                height: 10,
                                onPressed: () {},
                                child: Text(
                                  'Payment info',
                                  style: TextStyle(
                                      fontSize: 11,
                                      color: Color(0xff7fa6b7),
                                      decoration: TextDecoration.underline),
                                )),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Container(
                        height: 25,
                        child: Row(
                          children: [
                            //SizedBox(width: 10,),
                            MaterialButton(
                                height: 10,
                                onPressed: () {
                                  setState(() {
                                    isLight = !isLight;
                                  });
                                },
                                child: isLight
                                    ? Text(
                                        'Dark Mode',
                                        style: TextStyle(
                                          fontSize: 11,
                                          color: Color(0xff7fa6b7),
                                        ),
                                      )
                                    : Text(
                                        'Light Mode',
                                        style: TextStyle(
                                          fontSize: 11,
                                          color: Color(0xff7fa6b7),
                                        ),
                                      )),

                            isLight
                                ? Icon(
                                    Icons.shield_moon_outlined,
                                    color: Color(0xff7fa6b7),
                                  )
                                : Icon(Icons.sunny, color: Color(0xff7fa6b7)),
                          ],
                        ),
                      ),
                    ],
                  ),
                )),
          ],
        ));
  }
}
