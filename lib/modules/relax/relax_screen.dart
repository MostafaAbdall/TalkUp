import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  final double appBarHeight = 100.0;
  final VoidCallback onPressed;
  Color mainColor = Color(0xff7fa6b7);

  MyAppBar({required this.onPressed});

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
              width: 25,
            ),
            Expanded(
              child: Image(
                image: AssetImage('assets/images/ph4.png'),
                width: 80,
                height: 50,
              ),
            ),
            MaterialButton(
              onPressed: () {},
              child: Image(
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

class Relax extends StatelessWidget {
  List<Widget> con = [
    Center(
        child: Container(
      width: 80,
      height: 80,
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
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image(
            image: AssetImage('assets/images/ph10.png'),
            width: 80,
            height: 80,
          ),
        ],
      ),
    )),
    Center(
        child: Container(
      width: 80,
      height: 80,
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
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image(
            image: AssetImage('assets/images/ph10.png'),
            width: 80,
            height: 80,
          ),
        ],
      ),
    )),
    Center(
        child: Container(
      width: 80,
      height: 80,
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
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image(
            image: AssetImage('assets/images/ph10.png'),
            width: 80,
            height: 80,
          ),
        ],
      ),
    )),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(onPressed: () => Navigator.pop(context)),
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/relax.png'),
              fit: BoxFit.fill,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: 40,
              ),
              Text(
                '              Recently Played',
                style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
              ),
              CarouselSlider(
                  items: con,
                  options: CarouselOptions(
                      enlargeCenterPage: true,
                      scrollDirection: Axis.horizontal,
                      enlargeFactor: 0.1,
                      reverse: false,
                      initialPage: 0,
                      autoPlay: false,
                      enableInfiniteScroll: true,
                      aspectRatio: 25 / 9,
                      viewportFraction: 0.3)),
              SizedBox(
                height: 15,
              ),
              Text(
                '              For you',
                style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 45,
                  ),
                  Center(
                      child: Container(
                    width: 80,
                    height: 80,
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
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image(
                          image: AssetImage('assets/images/ph10.png'),
                          width: 80,
                          height: 80,
                        ),
                      ],
                    ),
                  )),
                  SizedBox(
                    width: 50,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Sleep Mix',
                        style:
                            TextStyle(fontSize: 17, color: Color(0xff1B3662)),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        '14 min',
                        style:
                            TextStyle(fontSize: 13, color: Color(0xff1B3662)),
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 45,
                  ),
                  Center(
                      child: Container(
                    width: 80,
                    height: 80,
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
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image(
                          image: AssetImage('assets/images/ph10.png'),
                          width: 80,
                          height: 80,
                        ),
                      ],
                    ),
                  )),
                  SizedBox(
                    width: 50,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Sleep Mix',
                        style:
                            TextStyle(fontSize: 17, color: Color(0xff1B3662)),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        '14 min',
                        style:
                            TextStyle(fontSize: 13, color: Color(0xff1B3662)),
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 45,
                  ),
                  Center(
                      child: Container(
                    width: 80,
                    height: 80,
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
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image(
                          image: AssetImage('assets/images/ph10.png'),
                          width: 80,
                          height: 80,
                        ),
                      ],
                    ),
                  )),
                  SizedBox(
                    width: 50,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Sleep Mix',
                        style:
                            TextStyle(fontSize: 17, color: Color(0xff1B3662)),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        '14 min',
                        style:
                            TextStyle(fontSize: 13, color: Color(0xff1B3662)),
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 45,
                  ),
                  Center(
                      child: Container(
                    width: 80,
                    height: 80,
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
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image(
                          image: AssetImage('assets/images/ph10.png'),
                          width: 80,
                          height: 80,
                        ),
                      ],
                    ),
                  )),
                  SizedBox(
                    width: 50,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Sleep Mix',
                        style:
                            TextStyle(fontSize: 17, color: Color(0xff1B3662)),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        '14 min',
                        style:
                            TextStyle(fontSize: 13, color: Color(0xff1B3662)),
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 45,
                  ),
                  Center(
                      child: Container(
                    width: 80,
                    height: 80,
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
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image(
                          image: AssetImage('assets/images/ph10.png'),
                          width: 80,
                          height: 80,
                        ),
                      ],
                    ),
                  )),
                  SizedBox(
                    width: 50,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Sleep Mix',
                        style:
                            TextStyle(fontSize: 17, color: Color(0xff1B3662)),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        '14 min',
                        style:
                            TextStyle(fontSize: 13, color: Color(0xff1B3662)),
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}