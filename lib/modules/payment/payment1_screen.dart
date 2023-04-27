import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:test2/modules/payment/payment2_screen.dart';
List<int> buttons =[0,1,2];
int selectedButton =0;
int buttonClicked=0;




bool isClicked = false;
bool isClicked2 = false;
bool isLight = false;
var dateController = TextEditingController();

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
                  : Image(
                image: AssetImage('assets/images/flash.png'),
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

class Payment1 extends StatefulWidget {


  @override
  State<Payment1> createState() => _DoctorProfileState();
}

class _DoctorProfileState extends State<Payment1> {
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
        body: SingleChildScrollView(
          child: Container(  decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/payment2.png'),
              fit: BoxFit.fill,
            ),
          ),
            child: Stack(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 190,
                    ),
                    Stack(children: [
                      Container(
                        child: Column(children: [
                          Row(children: [
                            SizedBox(width: 50,),
                            Image(width: 261,height: 179,
                              image: AssetImage(
                                'assets/images/Mobile payment.png',
                              ),
                            ),
                          ],),
                          SizedBox(height: 30,),
                          Row( mainAxisAlignment: MainAxisAlignment.center,crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text('please add payment method',style: TextStyle(fontSize: 15,color:  Color(0xff468195)),)
                            ],),
                          SizedBox(height: 60,),
                          Row(crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Center(
                                child: Container(
                                  width: 113,
                                  height: 38,

                                  child: ElevatedButton(
                                    onPressed: () {
                                      setState(() {
                                        isClicked2=!isClicked2;
                                      });
                                      // Navigator.push(
                                      //   context,
                                      //   MaterialPageRoute(
                                      //       builder: (context) =>
                                      //           Payment1()),
                                      // );
                                    },
                                    child: Text(
                                      'Add New Card',
                                      style: TextStyle(

                                          fontSize: 12.0),
                                    ),
                                    style: ElevatedButton
                                        .styleFrom(
                                      primary:
                                      Color(0xff7fa6b7),
                                      shape:
                                      RoundedRectangleBorder(
                                        borderRadius:
                                        BorderRadius
                                            .circular(30),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 190,)
                        ],),
                      ),
                      Positioned(
                          top: 250,
                          left: 5,
                          child: Container(
                            width: isClicked2 ? 350 : 0,
                            height: isClicked2 ? 270 : 0,
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
                                  topLeft: Radius.circular(20),
                                  topRight: Radius.circular(20),
                                  bottomLeft: Radius.circular(20),
                                  bottomRight: Radius.circular(20),
                                ),
                                color: Colors.white),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  height: 250,
                                  child: Column(
                                    children: [
                                      SizedBox(height: 13.5,),

                                      Row(crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.center,
                                      children: [ Image(
                                        image: AssetImage(
                                          'assets/images/l.png',
                                        ),
                                      ),],
                                      ),
                                      SizedBox(height: 10,),
                                      Row(crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.center,
                                        children: [



                                          Column(
                                            children: [
                                              Text(
                                                'Add New Card',
                                                style: TextStyle(
                                                    fontSize: 15,
                                                    color: Color(0xff7fa6b7),
                                                    ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 10,),
                                      Container(width: 295,height: 35,
                                          child: TextFormField(style: TextStyle(fontSize: 12),keyboardType: TextInputType.number,  decoration: InputDecoration(hintText: 'Card Number',
                                            border:UnderlineInputBorder(borderSide: BorderSide(color: Color(0xff468195)))

                                          ),)),
                                      SizedBox(height: 20,),
                                      Container(width: 295,height: 35,
                                          child: TextFormField(style: TextStyle(fontSize: 12),  decoration: InputDecoration(hintText: 'Holder Name',
                                              border:UnderlineInputBorder(borderSide: BorderSide(color: Color(0xff468195)))

                                          ),)),
                                      SizedBox(height: 20,),
                                      Row(crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                        Container(width: 140,height: 35,
                                            child: TextFormField(   style: TextStyle(fontSize: 12), keyboardType: TextInputType.datetime, decoration: InputDecoration(hintText: 'Expiry Date',
                                                border:UnderlineInputBorder(borderSide: BorderSide(color: Color(0xff468195)))

                                            ),)),
                                        SizedBox(width: 20,),
                                        Container(width: 140,height: 35,
                                            child: TextFormField(style: TextStyle(fontSize: 12),keyboardType: TextInputType.number,  decoration: InputDecoration(hintText: 'CVV',
                                                border:UnderlineInputBorder(borderSide: BorderSide(color: Color(0xff468195)))

                                            ),)),
                                      ],),
                                      SizedBox(height: 20,),
                                      Row(crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        SizedBox(width: 180,),
                                        Center(
                                          child: Container(
                                            width: 55,
                                            height: 25,

                                            child: ElevatedButton(
                                              onPressed: () {

                                                setState(() {
                                                  isClicked2=false;
                                                });
                                              },
                                              child: Text(
                                                'Cancel',
                                                style: TextStyle(
                                                    color: Color(0xff468195),
                                                    fontWeight:
                                                    FontWeight.bold,
                                                    fontSize: 7.0),
                                              ),
                                              style: ElevatedButton
                                                  .styleFrom(
                                                primary:
                                                Colors.white,
                                                side: BorderSide(color: Color(0xff468195)),
                                                shape:
                                                RoundedRectangleBorder(
                                                  borderRadius:
                                                  BorderRadius
                                                      .circular(30),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(width: 10,),
                                        Center(
                                          child: Container(
                                            width: 45,
                                            height: 25,
                                            decoration: BoxDecoration(

                                            ),
                                            child: ElevatedButton(
                                              onPressed: () {
                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          Payment2()),
                                                );
                                              },
                                              child: Text(
                                                'Add',
                                                style: TextStyle(
                                                    fontWeight:
                                                    FontWeight.bold,
                                                    fontSize: 7.0),
                                              ),
                                              style: ElevatedButton
                                                  .styleFrom(
                                                primary:
                                                Color(0xff7fa6b7),
                                                shape:
                                                RoundedRectangleBorder(
                                                  borderRadius:
                                                  BorderRadius
                                                      .circular(30),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),


                                      ],)

                                    ],
                                  ),
                                ),

                              ],
                            ),
                          )),

                    ],)
                  ],
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
            ),
          ),
        ));
  }
}
