import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
bool isClicked=false;
bool isLight=false;
bool isExpanded=false;

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
              width: 50,
            ),
            Expanded(
              child: isClicked
                  ? Text('')
                  : Container(
                child: Icon(Icons.account_circle_outlined, color: Colors.white),
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

class Account2 extends StatefulWidget {
  @override
  State<Account2> createState() => _AccountState();
}

class _AccountState extends State<Account2> {
  List<Widget> con = [
    Center(
        child: Container(
          width: 290,
          height: 155,
          decoration: BoxDecoration(boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 1,
              blurRadius: 5,
              offset: Offset(0, 5),
            ),
          ], borderRadius: BorderRadius.circular(20), color: Colors.white),
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
                      width: 35,
                      height: 35,
                      child: CircleAvatar(
                        backgroundColor: Color(0xff7fa6b7),
                      )),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    children: [
                      Text(
                        'Sandra Ehab Retalked',
                        style: TextStyle(fontSize: 10, color: Colors.grey),
                      ),
                      Text(
                        'Mahmoud Morsi',
                        style: TextStyle(fontSize: 15),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 70,
                  ),
                  Text(
                    '14h',
                    style: TextStyle(fontSize: 15, color: Colors.grey),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 65,
                  ),
                  Text(
                    'ياليتني طقس ليسأل الجميع عن احوالي ',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 15,
                  ),
                  Container(
                      width: 60,
                      height: 60,
                      child: MaterialButton(
                          onPressed: () {},
                          child: CircleAvatar(
                            backgroundColor: Colors.white,
                            child: Image(
                              image: AssetImage('assets/images/love2.png'),
                              width: 100,
                              height: 100,
                            ),
                          ))),
                  SizedBox(
                    width: 125,
                  ),
                  MaterialButton(
                      onPressed: () {},
                      child: Icon(
                        Icons.file_upload_outlined,
                        color: Color(0xff7fa6b7),
                      ))
                ],
              ),
            ],
          ),
        )),
    Center(
        child: Container(
          width: 290,
          height: 155,
          decoration: BoxDecoration(boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 1,
              blurRadius: 5,
              offset: Offset(0, 5),
            ),
          ], borderRadius: BorderRadius.circular(20), color: Colors.white),
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
                      width: 35,
                      height: 35,
                      child: CircleAvatar(
                        backgroundColor: Color(0xff7fa6b7),
                      )),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    children: [
                      Text(
                        'Sandra Ehab Retalked',
                        style: TextStyle(fontSize: 10, color: Colors.grey),
                      ),
                      Text(
                        'Mahmoud Morsi',
                        style: TextStyle(fontSize: 15),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 70,
                  ),
                  Text(
                    '14h',
                    style: TextStyle(fontSize: 15, color: Colors.grey),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 65,
                  ),
                  Text(
                    'ياليتني طقس ليسأل الجميع عن احوالي ',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 15,
                  ),
                  Container(
                      width: 60,
                      height: 60,
                      child: MaterialButton(
                          onPressed: () {},
                          child: CircleAvatar(
                            backgroundColor: Colors.white,
                            child: Image(
                              image: AssetImage('assets/images/love2.png'),
                              width: 100,
                              height: 100,
                            ),
                          ))),
                  SizedBox(
                    width: 125,
                  ),
                  MaterialButton(
                      onPressed: () {},
                      child: Icon(
                        Icons.file_upload_outlined,
                        color: Color(0xff7fa6b7),
                      ))
                ],
              ),
            ],
          ),
        )),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: MyAppBar(onPressed: () => Navigator.pop(context),onClicked: () {
          setState(() {
            isClicked = !isClicked;
          });
        },),
        body: Stack(children: [
          SingleChildScrollView(
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/profle.png'),
                  fit: BoxFit.fill,
                ),
              ),
              child: Column(
                children: [
                  Container(
                    width: double.infinity,
                    height: 200,
                    child: Stack(
                      children: [
                        Positioned(
                          top: 60,
                          left: 20,
                          child: Center(
                              child: Container(
                                width: 304,
                                height: 124,
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
                                    color: Color(0xff7fa6b7)),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      height: 35,
                                    ),
                                    Row(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        SizedBox(
                                          width: 27,
                                        ),
                                        Text(
                                          'Mahmoud Morsi',
                                          style: TextStyle(
                                              fontSize: 11, color: Colors.white),
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
                                          width: 27,
                                        ),
                                        Text(
                                          'Mahmoudmorsi@Gmail.com',
                                          style: TextStyle(
                                              fontSize: 12, color: Color(0xffF58F76)),
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
                                          width: 27,
                                        ),
                                        Text(
                                          "Sharing my journey to empower others 🌱 Let's grow together 🤝",
                                          style: TextStyle(
                                              fontSize: 9, color: Colors.white),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 17,
                                    ),
                                    Row(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        SizedBox(
                                          width: 27,
                                        ),
                                        Icon(
                                          Icons.calendar_month,
                                          color: Colors.white54,
                                          size: 15,
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Text(
                                          'Joined March 2032',
                                          style: TextStyle(
                                              fontSize: 9, color: Colors.white54),
                                        ),
                                        SizedBox(
                                          width: 100,
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
                                                'Edit profile',
                                                style: TextStyle(
                                                    decoration:
                                                    TextDecoration.underline,
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 6.0),
                                              ),
                                              style: ElevatedButton.styleFrom(
                                                primary: Color(0xffF58F76),
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                  BorderRadius.circular(30),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              )),
                        ),
                        Positioned(
                            top: 30,
                            left: 50,
                            child: Container(
                                width: 64,
                                height: 64,
                                child: CircleAvatar(
                                  backgroundColor: Colors.white.withOpacity(0),
                                  child: Image(
                                    image: AssetImage('assets/images/morsi.png'),
                                    width: 70,
                                    height: 70,
                                  ),
                                ))),
                      ],
                    ),
                  ),

                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: double.infinity,
                    height: 300,
                    child: Stack(
                      children: [
                        Positioned(
                          top: 60,
                          left: 20,
                          child: Center(
                              child: Container(
                                width: 304,
                                height: 210,
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
                                    color: Color(0xff7fa6b7)),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      height: 45,
                                    ),
                                    Row(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        SizedBox(
                                          width: 27,
                                        ),
                                        Text(
                                          'Name : Mahmoud Morsi',
                                          style: TextStyle(
                                              fontSize: 11, color: Colors.white),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        SizedBox(
                                          width: 27,
                                        ),
                                        Text(
                                          'Email',
                                          style: TextStyle(
                                              fontSize: 12, color: Colors.white),
                                        ),
                                        SizedBox(width: 10,),
                                        Text(
                                          'Mahmoudmorsi@Gmail.com',
                                          style: TextStyle(
                                              fontSize: 12, color: Color(0xffF58F76)),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Row(crossAxisAlignment: CrossAxisAlignment.center,
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        SizedBox(width: 27,),
                                        Text(
                                          'Bio :',
                                          style: TextStyle(
                                              fontSize: 12, color: Colors.white),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 10,),
                                    Row(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        SizedBox(
                                          width: 27,
                                        ),
                                        Text(
                                          "Sharing my journey to empower others 🌱 Let's grow together 🤝",
                                          style: TextStyle(
                                              fontSize: 9, color: Colors.white),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),

                                    Row(crossAxisAlignment: CrossAxisAlignment.center,
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        SizedBox(width: 27,),
                                        Text(
                                          'Age :',
                                          style: TextStyle(
                                              fontSize: 12, color: Colors.white),
                                        ),
                                        SizedBox(width: 5,),
                                        Text(
                                          '23',
                                          style: TextStyle(
                                              fontSize: 12, color: Colors.white),
                                        ),

                                      ],
                                    ),
                                    SizedBox(height: 10,),
                                    Row(crossAxisAlignment: CrossAxisAlignment.center,
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        SizedBox(width: 27,),
                                        Text(
                                          'Gender :',
                                          style: TextStyle(
                                              fontSize: 12, color: Colors.white),
                                        ),
                                        SizedBox(width: 5,),
                                        Text(
                                          'Male',
                                          style: TextStyle(
                                              fontSize: 12, color: Colors.white),
                                        ),

                                      ],
                                    ),
                                    SizedBox(height: 10,),
                                    Row(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        SizedBox(
                                          width: 27,
                                        ),
                                        Icon(
                                          Icons.calendar_month,
                                          color: Colors.white54,
                                          size: 15,
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Text(
                                          'Joined March 2032',
                                          style: TextStyle(
                                              fontSize: 9, color: Colors.white54),
                                        ),
                                        SizedBox(
                                          width: 100,
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
                                                'Edit profile',
                                                style: TextStyle(
                                                    decoration:
                                                    TextDecoration.underline,
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 6.0),
                                              ),
                                              style: ElevatedButton.styleFrom(
                                                primary: Color(0xffF58F76),
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                  BorderRadius.circular(30),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              )),
                        ),
                        Positioned(
                            top: 30,
                            left: 50,
                            child: Container(
                                width: 64,
                                height: 64,
                                child: CircleAvatar(
                                  backgroundColor: Colors.white.withOpacity(0),
                                  child: Image(
                                    image: AssetImage('assets/images/morsi.png'),
                                    width: 70,
                                    height: 70,
                                  ),
                                ))),
                      ],
                    ),
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
              ))
        ],)
    );
  }
}
