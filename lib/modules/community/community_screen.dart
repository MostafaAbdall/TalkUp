import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:test2/main.dart';
bool isClicked=false;
bool isClicked2=false;
bool isClicked3=false;
bool isClicked4=false;

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
              width: 20,
            ),
            Expanded(
              child: Image(
                image: AssetImage('assets/images/ph3.png'),
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

class Community extends StatefulWidget {
  @override
  State<Community> createState() => _CommunityState();
}

class _CommunityState extends State<Community> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(onPressed: () => Navigator.pop(context)),
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/community.png'),
              fit: BoxFit.fill,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 20,
              ),
              Center(
                  child: Container(
                width: 290,
                height: 155,
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
                            width: 35,
                            height: 35,
                            child: CircleAvatar(
                              backgroundColor: mainColor,
                            )),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Mahmoud Morsi',
                          style: TextStyle(fontSize: 15),
                        ),
                        SizedBox(
                          width: 70,
                        ),
                        Image(
                          image: AssetImage('assets/images/Line 6.png'),
                          width: 40,
                          height: 40,
                        )
                      ],
                    ),
                    // SizedBox(height: 10,),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 40,
                        ),
                        Expanded(
                          child: Container(
                              width: 200,
                              height: 55,
                              child: TextField(
                                maxLines: 1,
                                decoration: InputDecoration(
                                    hintText: 'what do you think ?',
                                    border: OutlineInputBorder(
                                        borderSide: BorderSide.none)),
                              )),
                        )
                      ],
                    ),
                    // SizedBox(height: 10,),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 20,
                        ),
                        Container(
                            width: 30,
                            height: 30,
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.2),
                                  spreadRadius: 1,
                                  blurRadius: 7,
                                  offset: Offset(0, 1),
                                ),
                              ],
                            ),
                            child: CircleAvatar(
                              backgroundColor: Colors.white,
                              child: Icon(
                                Icons.mic,
                                color: mainColor,
                              ),
                            )),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                            width: 30,
                            height: 30,
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.2),
                                  spreadRadius: 1,
                                  blurRadius: 7,
                                  offset: Offset(0, 1),
                                ),
                              ],
                            ),
                            child: CircleAvatar(
                              backgroundColor: Colors.white,
                              child: Image(
                                image: AssetImage('assets/images/ph5.png'),
                                width: 50,
                                height: 50,
                              ),
                            )),
                        SizedBox(
                          width: 105,
                        ),
                        MaterialButton(
                            onPressed: () {},
                            child: Image(
                              image: AssetImage('assets/images/ph6.png'),
                              width: 60,
                              height: 50,
                            ))
                      ],
                    ),
                  ],
                ),
              )),
              SizedBox(
                height: 20,
              ),
              CarouselSlider.builder(
                itemCount: 1,
                itemBuilder: (BuildContext context, int index, int i) {
                  return SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Center(
                            child: Container(
                          width: 290,
                          height: 155,
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
                                      width: 35,
                                      height: 35,
                                      child: CircleAvatar(
                                        backgroundColor: mainColor,
                                      )),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Column(
                                    children: [
                                      Text(
                                        'Sandra Ehab Retalked',
                                        style: TextStyle(
                                            fontSize: 10, color: Colors.grey),
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
                                    style: TextStyle(
                                        fontSize: 15, color: Colors.grey),
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
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
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
                                          onPressed: () {setState(() {
                                            isClicked=!isClicked;
                                          });},
                                          child: CircleAvatar(
                                            backgroundColor: Colors.white,
                                            child: Image(
                                              image: AssetImage(isClicked?'assets/images/love2.png':
                                                  'assets/images/love.png'),
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
                                        color: mainColor,
                                      ))
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
                          width: 290,
                          height: 155,
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
                                      width: 35,
                                      height: 35,
                                      child: CircleAvatar(
                                        backgroundColor: mainColor,
                                      )),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Column(
                                    children: [
                                      Text(
                                        'Sandra Ehab Retalked',
                                        style: TextStyle(
                                            fontSize: 10, color: Colors.grey),
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
                                    style: TextStyle(
                                        fontSize: 15, color: Colors.grey),
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
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
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
                                          onPressed: () {setState(() {
                                            isClicked2=!isClicked2;
                                          });},
                                          child: CircleAvatar(
                                            backgroundColor: Colors.white,
                                            child: Image(
                                              image: AssetImage(isClicked2?'assets/images/love2.png':
                                              'assets/images/love.png'),
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
                                        color: mainColor,
                                      ))
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
                          width: 290,
                          height: 155,
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
                                      width: 35,
                                      height: 35,
                                      child: CircleAvatar(
                                        backgroundColor: mainColor,
                                      )),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Column(
                                    children: [
                                      Text(
                                        'Sandra Ehab Retalked',
                                        style: TextStyle(
                                            fontSize: 10, color: Colors.grey),
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
                                    style: TextStyle(
                                        fontSize: 15, color: Colors.grey),
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
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
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
                                          onPressed: () {setState(() {
                                            isClicked3=!isClicked3;
                                          });},
                                          child: CircleAvatar(
                                            backgroundColor: Colors.white,
                                            child: Image(
                                              image: AssetImage(isClicked3?'assets/images/love2.png':
                                              'assets/images/love.png'),
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
                                        color: mainColor,
                                      ))
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
                          width: 290,
                          height: 155,
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
                                      width: 35,
                                      height: 35,
                                      child: CircleAvatar(
                                        backgroundColor: mainColor,
                                      )),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Column(
                                    children: [
                                      Text(
                                        'Sandra Ehab Retalked',
                                        style: TextStyle(
                                            fontSize: 10, color: Colors.grey),
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
                                    style: TextStyle(
                                        fontSize: 15, color: Colors.grey),
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
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
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
                                          onPressed: () {setState(() {
                                            isClicked4=!isClicked4;
                                          });},
                                          child: CircleAvatar(
                                            backgroundColor: Colors.white,
                                            child: Image(
                                              image: AssetImage(isClicked4?'assets/images/love2.png':
                                              'assets/images/love.png'),
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
                                        color: mainColor,
                                      ))
                                ],
                              ),
                            ],
                          ),
                        )),
                        SizedBox(
                          height: 40,
                        ),
                        CarouselSlider(
                          items: [Text(''), Text(''), Text(''), Text('')],
                          options: CarouselOptions(
                            scrollDirection: Axis.horizontal,
                            enableInfiniteScroll: true,
                            aspectRatio: 2.0,
                            viewportFraction: 0.49,
                          ),
                        ),
                      ],
                    ),
                  );
                },
                options: CarouselOptions(
                    scrollDirection: Axis.horizontal,
                    enableInfiniteScroll: false,
                    viewportFraction: 0.96,
                    aspectRatio: 5 / 9),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
