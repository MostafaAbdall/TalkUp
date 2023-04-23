import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test2/modules/account/account_screen.dart';
import 'package:test2/modules/community/community_screen.dart';
import 'package:test2/modules/relax/relax_screen.dart';

import '../chat/doctors_screen.dart';

class Home extends StatefulWidget {


  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {





  List<Widget> images3 = [
    MaterialButton(onPressed: (){}, child: Image(image: AssetImage('assets/images/i1.png'),)),
    MaterialButton(onPressed: (){}, child: Image(image: AssetImage('assets/images/i1.png'),)),
    MaterialButton(onPressed: (){}, child: Image(image: AssetImage('assets/images/i1.png'),)),


  ];




  int currentIndex=0;
  bool isExpanded = false;
  bool isExpanded2 = false;
  bool isExpanded3 = false;
  bool isExpanded4 = false;
  bool isExpanded5 = false;
  bool isExpanded6 = false;
  bool isExpanded7 = false;
  bool isExpanded8 = false;







  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      SingleChildScrollView(
        child: Container(decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/home.png'),
            fit: BoxFit.cover,
          ),
        ),
          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 41,),
              Row(crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(width: 43,),
                  Text('Good Evening',style: TextStyle(fontSize: 15),)
                ],),
              Row(crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(width: 43,),
                  Text('Mahmoud',style: TextStyle(fontSize: 25),),
                  SizedBox(width: 110,),
                  Container(child: MaterialButton(onPressed: (){},child:  Image(image: AssetImage('assets/images/ph1.png'),width: 15,height: 10,),)),
                ],),
              Center(
                child: Container(width: 300,height: 50,decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      spreadRadius: 1,
                      blurRadius: 5,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                  child: TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      prefixIcon:Image(image: AssetImage('assets/images/search.png'),) ,
                      suffixIcon:  MaterialButton( onPressed: (){}, child: Image(image: AssetImage('assets/images/Vector.png'),)),
                      border: OutlineInputBorder(borderSide: BorderSide(width: 1.0,color: Colors.white),
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Center(child: Text('How are you feeling Today?',style: TextStyle(fontSize: 20 ,fontFamily:'Rouloko' ,),)),
              SizedBox(height: 20,),
              Row(crossAxisAlignment: CrossAxisAlignment.center,children: [

                Container(width: 70,height: 70, child: MaterialButton( onPressed: (){}, child: Image(image: AssetImage('assets/images/e1.png'),))),
                Container(width: 70,height: 70, child: MaterialButton( onPressed: (){}, child: Image(image: AssetImage('assets/images/e2.png'),))),
                Container(width: 70,height: 70, child: MaterialButton( onPressed: (){}, child: Image(image: AssetImage('assets/images/e3.png'),))),
                Container(width: 70,height: 70, child: MaterialButton( onPressed: (){}, child: Image(image: AssetImage('assets/images/e3.png'),))),
                Container(width: 70,height: 70, child: MaterialButton( onPressed: (){}, child: Image(image: AssetImage('assets/images/e1.png'),))),




              ],),
              CarouselSlider(items: [
                MaterialButton(onPressed: (){Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Relax()),
                );}, child: Image(image: AssetImage('assets/images/group1.png'),)),
                MaterialButton(onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Community()),
                  );
                }, child: Image(image: AssetImage('assets/images/Group4.png'),)),
                MaterialButton(onPressed: (){}, child: Image(image: AssetImage('assets/images/Group3.png'),)),
                MaterialButton(onPressed: (){Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Chat()),
                );}, child: Image(image: AssetImage('assets/images/Group5.png'),)),


              ], options: CarouselOptions( enlargeCenterPage: true,
                  enlargeFactor: 0.1, reverse: false, initialPage: 0, autoPlay: true,enableInfiniteScroll: true,
                  aspectRatio: 30/9,
                  viewportFraction: 0.4)),



              // CarouselSlider(items: images2, options: CarouselOptions( autoPlay: false,enableInfiniteScroll: true,scrollDirection: Axis.vertical,disableCenter: false,
              //     aspectRatio: 9/9,
              //     enlargeCenterPage: false,viewportFraction: 0.3)),
              // SizedBox(height: 20,),
              // Text('       Active Doctors',style: TextStyle(fontSize: 20),),
              // SizedBox(height: 20,),

              CarouselSlider.builder(itemCount: 1, itemBuilder: (BuildContext context,int index,int i){
                return SingleChildScrollView(
                  child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 30,),
                      Text('       Talk Up Articles',style: TextStyle(fontSize: 17),),
                      SizedBox(height: 20,),
                      Center(
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              isExpanded = !isExpanded;

                            });
                          },
                          child: SingleChildScrollView(
                            child: AnimatedContainer(width: 313,
                              duration: Duration(milliseconds: 500),
                              height: isExpanded ? 270 : 80, // Change the height based on whether it's expanded or not
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
                                color:Color(0xff7fa6b7).withOpacity(isExpanded?0.5:1),

                              ),
                              child: Container(
                                child: Column(

                                  children: [
                                    SizedBox(height:10,),

                                    Center(
                                      child: Row(crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          SizedBox(width: 10,),
                                          Center(child: Container(  width: 103,height: 54,decoration: BoxDecoration(color: Color(0xffFFEAE5),borderRadius: BorderRadius.circular(10),),
                                            child: Center(child: Text('Anxiety')),
                                          )),
                                          SizedBox(width: 10,),
                                          Text(isExpanded?'':'is a natural response to stress',style: TextStyle(fontSize: 13,color: Colors.white),),

                                        ],),
                                    )
                                    ,
                                    Expanded(
                                      child: AnimatedOpacity(
                                        duration: Duration(milliseconds: 300),
                                        opacity: isExpanded ? 1 : 0, // Change the opacity based on whether it's expanded or not
                                        child: Padding(
                                          padding: const EdgeInsets.all(16.0),
                                          child: Text('is a natural response to stress, but when it becomes excessive, it can negatively impact mental health. Recognizing the signs of anxiety, such as constant worry, restlessness, and difficulty concentrating, is the first step in addressing the issue. To manage anxiety, try incorporating relaxation techniques, regular exercise, and a balanced diet into your daily routine. Seeking professional help is also a valuable option for those struggling with anxiety.'),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 20,),
                      Center(
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              isExpanded2 = !isExpanded2;

                            });
                          },
                          child: SingleChildScrollView(
                            child: AnimatedContainer(width: 313,
                              duration: Duration(milliseconds: 500),
                              height: isExpanded2 ? 270 : 80, // Change the height based on whether it's expanded or not
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
                                color:Color(0xff7fa6b7).withOpacity(isExpanded2?0.5:1),

                              ),
                              child: Container(
                                child: Column(

                                  children: [
                                    SizedBox(height:10,),

                                    Center(
                                      child: Row(crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          SizedBox(width: 10,),
                                          Center(child: Container(  width: 103,height: 54,decoration: BoxDecoration(color: Color(0xffFFEAE5),borderRadius: BorderRadius.circular(10),),
                                            child: Center(child: Text('Sleep')),
                                          )),
                                          SizedBox(width: 10,),
                                          Expanded(child: Text(isExpanded2?'':' is essential for maintaining good mental health',style: TextStyle(fontSize: 13,color: Colors.white),)),

                                        ],),
                                    )
                                    ,
                                    Expanded(
                                      child: AnimatedOpacity(
                                        duration: Duration(milliseconds: 300),
                                        opacity: isExpanded2 ? 1 : 0, // Change the opacity based on whether it's expanded or not
                                        child: Padding(
                                          padding: const EdgeInsets.all(16.0),
                                          child: Text('is essential for maintaining good mental health, as it allows the brain to repair and restore itself. Insufficient sleep can lead to mood disorders, impaired cognitive function, and increased stress levels. To improve sleep quality, establish a consistent sleep schedule, create a relaxing bedtime routine, and limit exposure to screens before bedtime.'),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 20,),
                      Center(
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              isExpanded3 = !isExpanded3;

                            });
                          },
                          child: SingleChildScrollView(
                            child: AnimatedContainer(width: 313,
                              duration: Duration(milliseconds: 500),
                              height: isExpanded3 ? 270 : 80, // Change the height based on whether it's expanded or not
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
                                color:Color(0xff7fa6b7).withOpacity(isExpanded3?0.5:1),

                              ),
                              child: Container(
                                child: Column(

                                  children: [
                                    SizedBox(height:10,),

                                    Center(
                                      child: Row(crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          SizedBox(width: 10,),
                                          Center(child: Container(  width: 103,height: 54,decoration: BoxDecoration(color: Color(0xffFFEAE5),borderRadius: BorderRadius.circular(10),),
                                            child: Center(child: Text('Mindfulness')),
                                          )),
                                          SizedBox(width: 10,),
                                          Expanded(child: Text(isExpanded3?'':'is the practice of focusing on\n the present moment',style: TextStyle(fontSize: 13,color: Colors.white),)),

                                        ],),
                                    )
                                    ,
                                    Expanded(
                                      child: AnimatedOpacity(
                                        duration: Duration(milliseconds: 300),
                                        opacity: isExpanded3 ? 1 : 0, // Change the opacity based on whether it's expanded or not
                                        child: Padding(
                                          padding: const EdgeInsets.all(16.0),
                                          child: Text('is the practice of focusing on the present moment, helping individuals become more aware of their thoughts and feelings. This can lead to reduced stress, improved emotional regulation, and increased self- awareness. Practicing mindfulness through meditation, deep breathing exercises, or yoga can significantly benefit mental health.'),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 20,),
                      Center(
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              isExpanded4 = !isExpanded4;

                            });
                          },
                          child: SingleChildScrollView(
                            child: AnimatedContainer(width: 313,
                              duration: Duration(milliseconds: 500),
                              height: isExpanded4 ? 270 : 80, // Change the height based on whether it's expanded or not
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
                                color:Color(0xff7fa6b7).withOpacity(isExpanded4?0.5:1),

                              ),
                              child: Container(
                                child: Column(

                                  children: [
                                    SizedBox(height:10,),

                                    Center(
                                      child: Row(crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          SizedBox(width: 10,),
                                          Center(child: Container(  width: 103,height: 54,decoration: BoxDecoration(color: Color(0xffFFEAE5),borderRadius: BorderRadius.circular(10),),
                                            child: Center(child: Text('Social \nConnections')),
                                          )),
                                          SizedBox(width: 10,),
                                          Text(isExpanded4?'':'are vital for mental well-\nbeing, as they provide\n support',style: TextStyle(fontSize: 13,color: Colors.white),),

                                        ],),
                                    )
                                    ,
                                    Expanded(
                                      child: AnimatedOpacity(
                                        duration: Duration(milliseconds: 300),
                                        opacity: isExpanded4 ? 1 : 0, // Change the opacity based on whether it's expanded or not
                                        child: Padding(
                                          padding: const EdgeInsets.all(16.0),
                                          child: Text('are vital for mental well-being, as they provide support, encouragement, and a sense of belonging. Building and maintaining strong relationships can help reduce stress, improve mood, and foster resilience. To strengthen social connections, make an effort to engage in face-to-face interactions, join clubs or groups, and be open to forming new friendships.'),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 20,),
                      Center(
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              isExpanded5 = !isExpanded5;

                            });
                          },
                          child: SingleChildScrollView(
                            child: AnimatedContainer(width: 313,
                              duration: Duration(milliseconds: 500),
                              height: isExpanded5 ? 270 : 80, // Change the height based on whether it's expanded or not
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
                                color:Color(0xff7fa6b7).withOpacity(isExpanded5?0.5:1),

                              ),
                              child: Container(
                                child: Column(

                                  children: [
                                    SizedBox(height:10,),

                                    Center(
                                      child: Row(crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          SizedBox(width: 10,),
                                          Center(child: Container(  width: 103,height: 54,decoration: BoxDecoration(color: Color(0xffFFEAE5),borderRadius: BorderRadius.circular(10),),
                                            child: Center(child: Text('Physical\n activity')),
                                          )),
                                          SizedBox(width: 10,),
                                          Text(isExpanded5?'':'has been shown to have a\n positive impact on mental\n health',style: TextStyle(fontSize: 13,color: Colors.white),),

                                        ],),
                                    )
                                    ,
                                    Expanded(
                                      child: AnimatedOpacity(
                                        duration: Duration(milliseconds: 300),
                                        opacity: isExpanded5 ? 1 : 0, // Change the opacity based on whether it's expanded or not
                                        child: Padding(
                                          padding: const EdgeInsets.all(16.0),
                                          child: Text('Physical activity has been shown to have a positive impact on mental health by reducing stress, boosting mood, and improving cognitive function. Engaging in regular exercise can also increase self-esteem and promote better sleep. Incorporate physical activity into your daily routine by taking short walks, participating in group sports, or trying a new fitness class.'),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),

                      SizedBox(height: 30,),

                      Text('       Active Doctors',style: TextStyle(fontSize: 15),),
                      CarouselSlider(items: [Container( width: 150,height: 200, child: Stack(
                        children: [
                          Positioned(
                            child: Center(
                              child: GestureDetector(
                                onTap: () {
                                  setState(() {
                                    isExpanded6 = !isExpanded6;

                                  });
                                },
                                child: SingleChildScrollView(
                                  child: AnimatedContainer(width: 115,
                                    duration: Duration(milliseconds: 500),
                                    height: isExpanded6 ? 160 : 123, // Change the height based on whether it's expanded or not
                                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
                                      color:Color(0xffF7D7CC),

                                    ),
                                    child: Container(
                                      child: Column(

                                        children: [
                                          SizedBox(height:isExpanded6? 60:50,),
                                          Row(crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                              Text('Dr/',style: TextStyle(color:Color(0xff417688),fontSize: 13 ),),
                                              Text('Sara Zidan',style: TextStyle(color:isExpanded6?Color(0xffFFFFFF):Color(0xff417688),fontSize: 13),)
                                            ],),
                                          SizedBox(height: 3,),
                                          Row(crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                              Text('Psychiatrist',style: TextStyle(color:Color(0xffECAB99),fontSize: 10 ),),

                                            ],),
                                          SizedBox(height: 3,),
                                          Row(crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                              Text('250 EGP / 30 mins',style: TextStyle(color:Color(0xff417688),fontSize: 10 ),),

                                            ],),
                                          SizedBox(height: 3,),
                                          Row(crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                              Image(image: AssetImage('assets/images/star.png'),width: 45,height: 10,),

                                            ],),
                                          Expanded(
                                            child: AnimatedOpacity(
                                              duration: Duration(milliseconds: 500),
                                              opacity: isExpanded6 ? 1 : 0, // Change the opacity based on whether it's expanded or not
                                              child: Padding(
                                                padding: const EdgeInsets.all(2.0),
                                                child:  Center(
                                                  child: Container(  width: 67,height: 14,decoration:BoxDecoration( boxShadow: [
                                                    BoxShadow(
                                                      color: Colors.grey.withOpacity(0.6),
                                                      spreadRadius: 1,
                                                      blurRadius: 5,
                                                      offset: Offset(0, 5),
                                                    ),
                                                  ],) ,
                                                    child: ElevatedButton(
                                                      onPressed: () {

                                                      },
                                                      child: Text('Book a Session',style: TextStyle(  fontSize: 5.0),),
                                                      style: ElevatedButton.styleFrom(
                                                        primary: Color(0xff7fa6b7),
                                                        shape: RoundedRectangleBorder(
                                                          borderRadius: BorderRadius.circular(30),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),



                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          )
                          ,
                          Positioned( top: 10,left: 50, child: Container( width: 53,height: 55, child: CircleAvatar(  backgroundColor: Colors.white.withOpacity(0),  child:  Image(image: AssetImage('assets/images/dr.png'),width: 70,height: 70,),))),


                        ],
                      ),),Container( width: 150,height: 200, child: Stack(
                        children: [
                          Positioned(
                            child: Center(
                              child: GestureDetector(
                                onTap: () {
                                  setState(() {
                                    isExpanded7 = !isExpanded7;

                                  });
                                },
                                child: SingleChildScrollView(
                                  child: AnimatedContainer(width: 115,
                                    duration: Duration(milliseconds: 500),
                                    height: isExpanded7 ? 160 : 123, // Change the height based on whether it's expanded or not
                                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
                                      color:Color(0xffF7D7CC),

                                    ),
                                    child: Container(
                                      child: Column(

                                        children: [
                                          SizedBox(height:isExpanded7? 60:50,),
                                          Row(crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                              Text('Dr/',style: TextStyle(color:Color(0xff417688),fontSize: 13 ),),
                                              Text('Sara Zidan',style: TextStyle(color:isExpanded7?Color(0xffFFFFFF):Color(0xff417688),fontSize: 13),)
                                            ],),
                                          SizedBox(height: 3,),
                                          Row(crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                              Text('Psychiatrist',style: TextStyle(color:Color(0xffECAB99),fontSize: 10 ),),

                                            ],),
                                          SizedBox(height: 3,),
                                          Row(crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                              Text('250 EGP / 30 mins',style: TextStyle(color:Color(0xff417688),fontSize: 10 ),),

                                            ],),
                                          SizedBox(height: 3,),
                                          Row(crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                              Image(image: AssetImage('assets/images/star.png'),width: 45,height: 10,),

                                            ],),
                                          Expanded(
                                            child: AnimatedOpacity(
                                              duration: Duration(milliseconds: 500),
                                              opacity: isExpanded7 ? 1 : 0, // Change the opacity based on whether it's expanded or not
                                              child: Padding(
                                                padding: const EdgeInsets.all(2.0),
                                                child:  Center(
                                                  child: Container(  width: 67,height: 14,decoration:BoxDecoration( boxShadow: [
                                                    BoxShadow(
                                                      color: Colors.grey.withOpacity(0.6),
                                                      spreadRadius: 1,
                                                      blurRadius: 5,
                                                      offset: Offset(0, 5),
                                                    ),
                                                  ],) ,
                                                    child: ElevatedButton(
                                                      onPressed: () {

                                                      },
                                                      child: Text('Book a Session',style: TextStyle(  fontSize: 5.0),),
                                                      style: ElevatedButton.styleFrom(
                                                        primary: Color(0xff7fa6b7),
                                                        shape: RoundedRectangleBorder(
                                                          borderRadius: BorderRadius.circular(30),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),



                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          )
                          ,
                          Positioned( top: 10,left: 50, child: Container( width: 53,height: 55, child: CircleAvatar(  backgroundColor: Colors.white.withOpacity(0),  child:  Image(image: AssetImage('assets/images/dr.png'),width: 70,height: 70,),))),


                        ],
                      ),),]
                        ,options:CarouselOptions(scrollDirection: Axis.horizontal,enableInfiniteScroll: true,aspectRatio: 2.0,viewportFraction: 0.49,) ,),
                      SizedBox(height: 50,),
                    ],
                  ),
                );
              }, options: CarouselOptions(scrollDirection: Axis.horizontal,enableInfiniteScroll: false,viewportFraction: 0.96,aspectRatio: 9/9



              ),),





            ],

          ),
        ),
      ),


    );
  }
}
