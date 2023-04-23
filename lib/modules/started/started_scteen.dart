import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test2/modules/login/login_screen.dart';
import 'package:test2/modules/sign_up/sign_up_screen.dart';
import 'package:test2/modules/started/started2_screen.dart';


class Started extends StatefulWidget {
  @override
  State<Started> createState() => _Started1State();
}

class _Started1State extends State<Started> {
  int currnetIndex= 0;
  List <Widget> dot =[

    Started(),
  ];

  @override
  Widget build(BuildContext context) {
    return PageView(
      children: <Widget>[
        Scaffold(
          body: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(15.0), ),child: Column(mainAxisAlignment: MainAxisAlignment.center,

                    children: [
                      Image(image: AssetImage('assets/images/bro.png'),height: 320,width: 281,),
                      SizedBox(height: 15.0,),
                      Center(child: Text('Begin your mental wellness journey today Help starts  here ',textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 25.0,color: Colors.blueGrey ))),
                      Image(image: AssetImage('assets/images/dot2.png'),height: 50,width: 50,),
                      SizedBox(height: 70.0,),
                      Container(width: 302.0,height: 50,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Started2()),
                            );
                          },
                          child: Image(image: AssetImage('assets/images/Arrow 1.png')) ,
                          style: ElevatedButton.styleFrom(
                            primary: Colors.teal,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                          ),
                        ),

                      ),








                    ],),
                  ),

                ],
              ),
            ),
          ),
        ),
        Scaffold(
          body: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(15.0), ),child: Column(mainAxisAlignment: MainAxisAlignment.center,

                    children: [
                      Image(image: AssetImage('assets/images/pana.png'),height: 320,width: 281,),
                      SizedBox(height: 15.0,),
                      Center(child: Text('Talk up helps you take the next step towards leading a healthier, more balanced life. ',textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 25.0,color: Colors.blueGrey ))),
                      Image(image: AssetImage('assets/images/dot.png'),height: 50,width: 50,),
                      SizedBox(height: 70.0,),
                      Container(width: 302.0,height: 50,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => SignUp()),
                            );
                          },
                          child: Text('Get Started',style: TextStyle(fontSize: 20.0),),
                          style: ElevatedButton.styleFrom(
                            primary: Colors.teal,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                          ),
                        ),

                      ),







                    ],),
                  ),

                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
