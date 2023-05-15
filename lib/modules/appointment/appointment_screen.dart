import 'package:flutter/material.dart';

import '../../videoCall/videoCall1_screen.dart';



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
              width: 40,
            ),
            Expanded(
              child: isClicked
                  ? Text('')
                  :  Image(
                image: AssetImage('assets/images/appoint.png'),
                width: 20,
                height: 20,
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

class Appointment extends StatefulWidget {
  @override
  State<Appointment> createState() => _ChatState();
}

class _ChatState extends State<Appointment> {
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
                    Row(crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(width: 25,),
                        Text('Today :',style: TextStyle(fontSize: 15,color: Color(0xff7fa6b7)),),
                      ],
                    ),
                    SizedBox(height: 15,),
                    Center(
                        child: Container(
                          width: 328,
                          height: 125,
                          decoration: BoxDecoration(

                              borderRadius: BorderRadius.circular(20),
                              color: Color(0xffECCFC8).withOpacity(0.7)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [

                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Container(
                                      width: 60,
                                      height: 60,
                                      child: CircleAvatar(
                                        backgroundColor:
                                        Colors.white,
                                        child: Image(
                                          image: AssetImage('assets/images/dr.png'),
                                          width: 55,
                                          height: 55,
                                        ),
                                      )),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Column(crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      SizedBox(height: 20,),
                                      Row(crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Dr -Sara Zidan',
                                            style: TextStyle(
                                                fontSize: 15,
                                                fontWeight: FontWeight.bold,
                                                color: Color(0xff7fa6b7)),
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 5,),
                                      Row(children: [
                                        Text(
                                          "Master's degree in Neurology and Psychiatry",
                                          style: TextStyle(
                                              fontSize: 11, color: Color(0xff7fa6b7)),
                                        ),
                                      ],),
                                      SizedBox(height: 10,),
                                      Row(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          SizedBox(
                                            width: 20,
                                          ),
                                          Image(
                                            image: AssetImage('assets/images/star appo.png'),
                                            width: 98,
                                            height: 16,
                                          ),
                                        ],
                                      ),

                                    ],
                                  ),
                                ],
                              ),

                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    width: 15,
                                  ),
                                  Container(
                                    width: 46,
                                    height: 14,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: Color(0xff7EA2AE),
                                    ),
                                    child: Center(
                                        child: Text(
                                          'Psychiatrist',
                                          style: TextStyle(
                                              fontSize: 8,
                                              color: Colors.white),
                                        )),
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

                                ],
                              ),

                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    width: 60,
                                  ),
                                  Text(
                                    "Session Duration : 30 Minutes",
                                    style: TextStyle(
                                        fontSize: 10, color: Color(0xff7fa6b7)),
                                  ),


                                  SizedBox(
                                    width: 40,
                                  ),
                                  Center(
                                    child: Container(
                                      width: 60,
                                      height: 17,
                                      decoration: BoxDecoration(

                                      ),
                                      child: ElevatedButton(
                                        onPressed: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    VideoCall1()),
                                          );
                                        },
                                        child: Text(
                                          'join now',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 7.0),
                                        ),
                                        style: ElevatedButton.styleFrom(
                                          primary: Color(0xff7EA2AE),
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
                      height: 25,
                    ),
                    Container(width: 262,height: 2,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.3),
                            spreadRadius: 1,
                            blurRadius: 3,
                            offset: Offset(0, 5),
                          )
                        ],color: Colors.black.withOpacity(0.0)
                      ),),
                    SizedBox(height: 20,),
                    Row(crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(width: 25,),
                        Text('Previous Sessions :',style: TextStyle(fontSize: 15,color: Color(0xff7fa6b7)),),
                      ],
                    ),
                    SizedBox(height: 15,),
                    Center(
                        child: Container(
                          width: 328,
                          height: 125,
                          decoration: BoxDecoration(

                              borderRadius: BorderRadius.circular(20),
                              color: Color(0xffECCFC8).withOpacity(0.7)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [

                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Container(
                                      width: 60,
                                      height: 60,
                                      child: CircleAvatar(
                                        backgroundColor:
                                        Colors.white,
                                        child: Image(
                                          image: AssetImage('assets/images/dr.png'),
                                          width: 55,
                                          height: 55,
                                        ),
                                      )),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Column(crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      SizedBox(height: 20,),
                                      Row(crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Dr -Sara Zidan',
                                            style: TextStyle(
                                                fontSize: 15,
                                                fontWeight: FontWeight.bold,
                                                color: Color(0xff7fa6b7)),
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 5,),
                                      Row(children: [
                                        Text(
                                          "Master's degree in Neurology and Psychiatry",
                                          style: TextStyle(
                                              fontSize: 11, color: Color(0xff7fa6b7)),
                                        ),
                                      ],),
                                      SizedBox(height: 10,),
                                      Row(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          SizedBox(
                                            width: 20,
                                          ),
                                          Image(
                                            image: AssetImage('assets/images/star appo.png'),
                                            width: 98,
                                            height: 16,
                                          ),
                                        ],
                                      ),

                                    ],
                                  ),
                                ],
                              ),

                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    width: 15,
                                  ),
                                  Container(
                                    width: 46,
                                    height: 14,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: Color(0xff7EA2AE),
                                    ),
                                    child: Center(
                                        child: Text(
                                          'Psychiatrist',
                                          style: TextStyle(
                                              fontSize: 8,
                                              color: Colors.white),
                                        )),
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

                                ],
                              ),

                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    width: 60,
                                  ),
                                  Text(
                                    "Session Duration : 30 Minutes",
                                    style: TextStyle(
                                        fontSize: 10, color: Color(0xff7fa6b7)),
                                  ),


                                  SizedBox(
                                    width: 40,
                                  ),
                                  Center(
                                    child: Container(
                                      width: 60,
                                      height: 17,
                                      decoration: BoxDecoration(

                                      ),
                                      child: ElevatedButton(
                                        onPressed: () {
                                          // Navigator.push(
                                          //   context,
                                          //   MaterialPageRoute(
                                          //       builder: (context) =>
                                          //           DoctorProfile()),
                                          // );
                                        },
                                        child: Text(
                                          'join now',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 7.0,color: Color(0xff7EA2AE)),
                                        ),
                                        style: ElevatedButton.styleFrom(
                                          primary: Colors.white,
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(30),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 20,),


                                ],
                              ),
                            ],
                          ),
                        )),
                    SizedBox(height: 20,),
                    Center(
                        child: Container(
                          width: 328,
                          height: 125,
                          decoration: BoxDecoration(

                              borderRadius: BorderRadius.circular(20),
                              color: Color(0xffECCFC8).withOpacity(0.7)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [

                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Container(
                                      width: 60,
                                      height: 60,
                                      child: CircleAvatar(
                                        backgroundColor:
                                        Colors.white,
                                        child: Image(
                                          image: AssetImage('assets/images/dr.png'),
                                          width: 55,
                                          height: 55,
                                        ),
                                      )),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Column(crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      SizedBox(height: 20,),
                                      Row(crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Dr -Sara Zidan',
                                            style: TextStyle(
                                                fontSize: 15,
                                                fontWeight: FontWeight.bold,
                                                color: Color(0xff7fa6b7)),
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 5,),
                                      Row(children: [
                                        Text(
                                          "Master's degree in Neurology and Psychiatry",
                                          style: TextStyle(
                                              fontSize: 11, color: Color(0xff7fa6b7)),
                                        ),
                                      ],),
                                      SizedBox(height: 10,),
                                      Row(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          SizedBox(
                                            width: 20,
                                          ),
                                          Image(
                                            image: AssetImage('assets/images/star appo.png'),
                                            width: 98,
                                            height: 16,
                                          ),
                                        ],
                                      ),

                                    ],
                                  ),
                                ],
                              ),

                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    width: 15,
                                  ),
                                  Container(
                                    width: 46,
                                    height: 14,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: Color(0xff7EA2AE),
                                    ),
                                    child: Center(
                                        child: Text(
                                          'Psychiatrist',
                                          style: TextStyle(
                                              fontSize: 8,
                                              color: Colors.white),
                                        )),
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

                                ],
                              ),

                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    width: 60,
                                  ),
                                  Text(
                                    "Session Duration : 30 Minutes",
                                    style: TextStyle(
                                        fontSize: 10, color: Color(0xff7fa6b7)),
                                  ),


                                  SizedBox(
                                    width: 40,
                                  ),
                                  Center(
                                    child: Container(
                                      width: 60,
                                      height: 17,
                                      decoration: BoxDecoration(

                                      ),
                                      child: ElevatedButton(
                                        onPressed: () {
                                          // Navigator.push(
                                          //   context,
                                          //   MaterialPageRoute(
                                          //       builder: (context) =>
                                          //           DoctorProfile()),
                                          // );
                                        },
                                        child: Text(
                                          'join now',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 7.0,color: Color(0xff7EA2AE)),
                                        ),
                                        style: ElevatedButton.styleFrom(
                                          primary: Colors.white,
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(30),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 20,),


                                ],
                              ),
                            ],
                          ),
                        )),
                    SizedBox(height: 20,),
                    Center(
                        child: Container(
                          width: 328,
                          height: 125,
                          decoration: BoxDecoration(

                              borderRadius: BorderRadius.circular(20),
                              color: Color(0xffECCFC8).withOpacity(0.7)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [

                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Container(
                                      width: 60,
                                      height: 60,
                                      child: CircleAvatar(
                                        backgroundColor:
                                        Colors.white,
                                        child: Image(
                                          image: AssetImage('assets/images/dr.png'),
                                          width: 55,
                                          height: 55,
                                        ),
                                      )),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Column(crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      SizedBox(height: 20,),
                                      Row(crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Dr -Sara Zidan',
                                            style: TextStyle(
                                                fontSize: 15,
                                                fontWeight: FontWeight.bold,
                                                color: Color(0xff7fa6b7)),
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 5,),
                                      Row(children: [
                                        Text(
                                          "Master's degree in Neurology and Psychiatry",
                                          style: TextStyle(
                                              fontSize: 11, color: Color(0xff7fa6b7)),
                                        ),
                                      ],),
                                      SizedBox(height: 10,),
                                      Row(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          SizedBox(
                                            width: 20,
                                          ),
                                          Image(
                                            image: AssetImage('assets/images/star appo.png'),
                                            width: 98,
                                            height: 16,
                                          ),
                                        ],
                                      ),

                                    ],
                                  ),
                                ],
                              ),

                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    width: 15,
                                  ),
                                  Container(
                                    width: 46,
                                    height: 14,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: Color(0xff7EA2AE),
                                    ),
                                    child: Center(
                                        child: Text(
                                          'Psychiatrist',
                                          style: TextStyle(
                                              fontSize: 8,
                                              color: Colors.white),
                                        )),
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

                                ],
                              ),

                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    width: 60,
                                  ),
                                  Text(
                                    "Session Duration : 30 Minutes",
                                    style: TextStyle(
                                        fontSize: 10, color: Color(0xff7fa6b7)),
                                  ),


                                  SizedBox(
                                    width: 40,
                                  ),
                                  Center(
                                    child: Container(
                                      width: 60,
                                      height: 17,
                                      decoration: BoxDecoration(

                                      ),
                                      child: ElevatedButton(
                                        onPressed: () {
                                          // Navigator.push(
                                          //   context,
                                          //   MaterialPageRoute(
                                          //       builder: (context) =>
                                          //           DoctorProfile()),
                                          // );
                                        },
                                        child: Text(
                                          'join now',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 7.0,color: Color(0xff7EA2AE)),
                                        ),
                                        style: ElevatedButton.styleFrom(
                                          primary: Colors.white,
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(30),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 20,),


                                ],
                              ),
                            ],
                          ),
                        )),
                    SizedBox(height: 20,),
                    Center(
                        child: Container(
                          width: 328,
                          height: 125,
                          decoration: BoxDecoration(

                              borderRadius: BorderRadius.circular(20),
                              color: Color(0xffECCFC8).withOpacity(0.7)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [

                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Container(
                                      width: 60,
                                      height: 60,
                                      child: CircleAvatar(
                                        backgroundColor:
                                        Colors.white,
                                        child: Image(
                                          image: AssetImage('assets/images/dr.png'),
                                          width: 55,
                                          height: 55,
                                        ),
                                      )),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Column(crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      SizedBox(height: 20,),
                                      Row(crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Dr -Sara Zidan',
                                            style: TextStyle(
                                                fontSize: 15,
                                                fontWeight: FontWeight.bold,
                                                color: Color(0xff7fa6b7)),
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 5,),
                                      Row(children: [
                                        Text(
                                          "Master's degree in Neurology and Psychiatry",
                                          style: TextStyle(
                                              fontSize: 11, color: Color(0xff7fa6b7)),
                                        ),
                                      ],),
                                      SizedBox(height: 10,),
                                      Row(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          SizedBox(
                                            width: 20,
                                          ),
                                          Image(
                                            image: AssetImage('assets/images/star appo.png'),
                                            width: 98,
                                            height: 16,
                                          ),
                                        ],
                                      ),

                                    ],
                                  ),
                                ],
                              ),

                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    width: 15,
                                  ),
                                  Container(
                                    width: 46,
                                    height: 14,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: Color(0xff7EA2AE),
                                    ),
                                    child: Center(
                                        child: Text(
                                          'Psychiatrist',
                                          style: TextStyle(
                                              fontSize: 8,
                                              color: Colors.white),
                                        )),
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

                                ],
                              ),

                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    width: 60,
                                  ),
                                  Text(
                                    "Session Duration : 30 Minutes",
                                    style: TextStyle(
                                        fontSize: 10, color: Color(0xff7fa6b7)),
                                  ),


                                  SizedBox(
                                    width: 40,
                                  ),
                                  Center(
                                    child: Container(
                                      width: 60,
                                      height: 17,
                                      decoration: BoxDecoration(

                                      ),
                                      child: ElevatedButton(
                                        onPressed: () {
                                          // Navigator.push(
                                          //   context,
                                          //   MaterialPageRoute(
                                          //       builder: (context) =>
                                          //           DoctorProfile()),
                                          // );
                                        },
                                        child: Text(
                                          'join now',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 7.0,color: Color(0xff7EA2AE)),
                                        ),
                                        style: ElevatedButton.styleFrom(
                                          primary: Colors.white,
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(30),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 20,),


                                ],
                              ),
                            ],
                          ),
                        )),
                    SizedBox(height: 40,)



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
