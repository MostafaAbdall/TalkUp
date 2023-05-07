import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:test2/modules/home/home_layout.dart';
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

class Payment3 extends StatefulWidget {


  @override
  State<Payment3> createState() => _DoctorProfileState();
}

class _DoctorProfileState extends State<Payment3> {
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
                      height:20,
                    ),
                    Stack(children: [
                      Container(
                        child: Column(children: [
                          CarouselSlider(
                              items: [
                                MaterialButton(
                                    onPressed: () {
                                      // Navigator.push(
                                      //   context,
                                      //   MaterialPageRoute(builder: (context) => Relax()),
                                      // );
                                    },
                                    child: Image(
                                      image: AssetImage('assets/images/v1.png'),
                                    )),
                                MaterialButton(
                                    onPressed: () {
                                      // Navigator.push(
                                      //   context,
                                      //   MaterialPageRoute(builder: (context) => Relax()),
                                      // );
                                    },
                                    child: Image(
                                      image: AssetImage('assets/images/v2.png'),
                                    )),

                              ],
                              options: CarouselOptions(
                                  enlargeCenterPage: true,
                                  enlargeFactor: 0.1,
                                  reverse: false,
                                  initialPage: 0,
                                  autoPlay: false,
                                  enableInfiniteScroll: false,
                                  aspectRatio: 15/9,
                                  viewportFraction: 0.9)),
                          SizedBox(height: 10,),
                          Container( width: 117,height: 30,decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),border: Border.all(color:Color(0xff468195),width: 1 )),
                          child:Row(crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,

                          children: [ Container(
                            width: 70,
                            height: 30,

                            child: ElevatedButton(
                              onPressed: () {

                               showDialog(context: context, builder: (BuildContext context){
                                 return  Container( width: 235,height: 195, decoration: BoxDecoration(
                                     borderRadius: BorderRadius.circular(40.0),),
                                   child: AlertDialog(
                                     title: Row(crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.center,
                                       children: [
                                         Center(
                                           child: Image(
                                             image: AssetImage('assets/images/payment a.png'),
                                             width: 62,
                                             height:84,
                                           ),
                                         ),


                                       ],
                                     ),
                                     content: Container(width: 235,height: 30,
                                       child: Row(crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.center,
                                         children: [
                                           Text(' Payment Done  ',style: TextStyle(color: Color(0xff468195)),),
                                         ],
                                       ),
                                     ) ,
                                     actions: <Widget>[
                                       Center(
                                         child: Container(width: 85,height: 25,decoration: BoxDecoration( boxShadow: [
                                           BoxShadow(
                                             color: Colors.grey.withOpacity(0.5),
                                             spreadRadius: 1,
                                             blurRadius: 5,
                                             offset: Offset(0, 5),
                                           ),
                                         ],
                                           borderRadius: BorderRadius.circular(20), color: Color(0xff468195)
                                         ),
                                           child: MaterialButton(
                                             onPressed: () {
                                               Navigator.push(
                                                 context,
                                                 MaterialPageRoute(builder: (context) =>Payment3 ()),
                                               );
                                             },
                                             child: Text('Done',style: TextStyle(color: Colors.white),),
                                           ),
                                         ),
                                       ),
                                       SizedBox(height: 10,),
                                     ],
                                   ),
                                 );
                               });
                              },
                              child: Text(
                                'pay',
                                style: TextStyle(

                                    fontSize: 15.0),
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
                          SizedBox(width: 7,),
                          Center(child: Text('250',style: TextStyle(color: Color(0xff468195)),))
                          ],),
                          ),
                        SizedBox(height: 30,),
                          Row(crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(width: 40,),
                            Text('Recent Movements',style: TextStyle(fontSize: 12,color: Color(0xff468195)),),
                            SizedBox(width: 130,),
                            Text('See all',style: TextStyle(fontSize: 12,color: Color(0xff468195)),),
                            SizedBox(width: 10,),
                            Center(child: Icon(Icons.arrow_forward_ios, color: Color(0xff468195),size: 15,)),
                          ],),
                          SizedBox(height: 30,),
                          CarouselSlider.builder(
                            itemCount: 1,
                            itemBuilder: (BuildContext context, int index, int i) {
                              return SingleChildScrollView(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Center(
                                        child: Container(
                                          width: 279,
                                          height: 46,
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
                                              color: Color(0xffECCFC8).withOpacity(0.5)),
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              SizedBox(height: 17,),
                                              Row(crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
                                              children: [
                                                SizedBox(width: 20,),
                                                Center(child: Text('Sara Zidan',style: TextStyle(fontSize: 11,color: Color(0xff468195)),)),
                                                SizedBox(width: 40,),
                                                Center(child: Text('Thursday 13/01',style: TextStyle(fontSize: 11,color: Color(0xff468195)),)),
                                                SizedBox(width: 35,),
                                                Center(child: Text('450 EGP',style: TextStyle(fontSize: 11,color: Color(0xff468195)),)),
                                              ],
                                              )

                                            ],
                                          ),
                                        )),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Center(
                                        child: Container(
                                          width: 279,
                                          height: 46,
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
                                              color: Color(0xffECCFC8).withOpacity(0.5)),
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              SizedBox(height: 17,),
                                              Row(crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
                                                children: [
                                                  SizedBox(width: 20,),
                                                  Center(child: Text('Sara Zidan',style: TextStyle(fontSize: 11,color: Color(0xff468195)),)),
                                                  SizedBox(width: 40,),
                                                  Center(child: Text('Thursday 13/01',style: TextStyle(fontSize: 11,color: Color(0xff468195)),)),
                                                  SizedBox(width: 35,),
                                                  Center(child: Text('450 EGP',style: TextStyle(fontSize: 11,color: Color(0xff468195)),)),
                                                ],
                                              )

                                            ],
                                          ),
                                        )),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Center(
                                        child: Container(
                                          width: 279,
                                          height: 46,
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
                                              color: Color(0xffECCFC8).withOpacity(0.5)),
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              SizedBox(height: 17,),
                                              Row(crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
                                                children: [
                                                  SizedBox(width: 20,),
                                                  Center(child: Text('Sara Zidan',style: TextStyle(fontSize: 11,color: Color(0xff468195)),)),
                                                  SizedBox(width: 40,),
                                                  Center(child: Text('Thursday 13/01',style: TextStyle(fontSize: 11,color: Color(0xff468195)),)),
                                                  SizedBox(width: 35,),
                                                  Center(child: Text('450 EGP',style: TextStyle(fontSize: 11,color: Color(0xff468195)),)),
                                                ],
                                              )

                                            ],
                                          ),
                                        )),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Center(
                                        child: Container(
                                          width: 279,
                                          height: 46,
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
                                              color: Color(0xffECCFC8).withOpacity(0.5)),
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              SizedBox(height: 17,),
                                              Row(crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
                                                children: [
                                                  SizedBox(width: 20,),
                                                  Center(child: Text('Sara Zidan',style: TextStyle(fontSize: 11,color: Color(0xff468195)),)),
                                                  SizedBox(width: 40,),
                                                  Center(child: Text('Thursday 13/01',style: TextStyle(fontSize: 11,color: Color(0xff468195)),)),
                                                  SizedBox(width: 35,),
                                                  Center(child: Text('450 EGP',style: TextStyle(fontSize: 11,color: Color(0xff468195)),)),
                                                ],
                                              )

                                            ],
                                          ),
                                        )),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Center(
                                        child: Container(
                                          width: 279,
                                          height: 46,
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
                                              color: Color(0xffECCFC8).withOpacity(0.5)),
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              SizedBox(height: 17,),
                                              Row(crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
                                                children: [
                                                  SizedBox(width: 20,),
                                                  Center(child: Text('Sara Zidan',style: TextStyle(fontSize: 11,color: Color(0xff468195)),)),
                                                  SizedBox(width: 40,),
                                                  Center(child: Text('Thursday 13/01',style: TextStyle(fontSize: 11,color: Color(0xff468195)),)),
                                                  SizedBox(width: 35,),
                                                  Center(child: Text('450 EGP',style: TextStyle(fontSize: 11,color: Color(0xff468195)),)),
                                                ],
                                              )

                                            ],
                                          ),
                                        )),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Center(
                                        child: Container(
                                          width: 279,
                                          height: 46,
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
                                              color: Color(0xffECCFC8).withOpacity(0.5)),
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              SizedBox(height: 17,),
                                              Row(crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
                                                children: [
                                                  SizedBox(width: 20,),
                                                  Center(child: Text('Sara Zidan',style: TextStyle(fontSize: 11,color: Color(0xff468195)),)),
                                                  SizedBox(width: 40,),
                                                  Center(child: Text('Thursday 13/01',style: TextStyle(fontSize: 11,color: Color(0xff468195)),)),
                                                  SizedBox(width: 35,),
                                                  Center(child: Text('450 EGP',style: TextStyle(fontSize: 11,color: Color(0xff468195)),)),
                                                ],
                                              )

                                            ],
                                          ),
                                        )),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Center(
                                        child: Container(
                                          width: 279,
                                          height: 46,
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
                                              color: Color(0xffECCFC8).withOpacity(0.5)),
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              SizedBox(height: 17,),
                                              Row(crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
                                                children: [
                                                  SizedBox(width: 20,),
                                                  Center(child: Text('Sara Zidan',style: TextStyle(fontSize: 11,color: Color(0xff468195)),)),
                                                  SizedBox(width: 40,),
                                                  Center(child: Text('Thursday 13/01',style: TextStyle(fontSize: 11,color: Color(0xff468195)),)),
                                                  SizedBox(width: 35,),
                                                  Center(child: Text('450 EGP',style: TextStyle(fontSize: 11,color: Color(0xff468195)),)),
                                                ],
                                              )

                                            ],
                                          ),
                                        )),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Center(
                                        child: Container(
                                          width: 279,
                                          height: 46,
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
                                              color: Color(0xffECCFC8).withOpacity(0.5)),
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              SizedBox(height: 17,),
                                              Row(crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
                                                children: [
                                                  SizedBox(width: 20,),
                                                  Center(child: Text('Sara Zidan',style: TextStyle(fontSize: 11,color: Color(0xff468195)),)),
                                                  SizedBox(width: 40,),
                                                  Center(child: Text('Thursday 13/01',style: TextStyle(fontSize: 11,color: Color(0xff468195)),)),
                                                  SizedBox(width: 35,),
                                                  Center(child: Text('450 EGP',style: TextStyle(fontSize: 11,color: Color(0xff468195)),)),
                                                ],
                                              )

                                            ],
                                          ),
                                        )),
                                    SizedBox(
                                      height: 20,
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


                        ],),
                      ),


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
