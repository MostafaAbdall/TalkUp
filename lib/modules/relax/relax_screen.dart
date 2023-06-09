
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
bool isClicked=false;
bool isClicked2=false;
bool isClicked3=false;

bool isLight=false;



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
                child: Image(
                  image: AssetImage('assets/images/ph4.png'),
                  width: 80,
                  height: 50,
                ),
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

class Relax extends StatefulWidget {
  @override

  State<Relax> createState() => _RelaxState();
}

class _RelaxState extends State<Relax> {

  // bool isPlaying=false;
  // AudioPlayer audioPlayer = AudioPlayer();
  // Duration duration=Duration.zero;
  // Duration position=Duration.zero;
  @override
  // void initState() {
  //   super.initState();
  //   _loadAudio();
  //   audioPlayer.onPlayerStateChanged.listen((state) {
  //     setState(() {
  //       isPlaying=state ==PlayerState.playing;
  //     });
  //   });
  //
  //   audioPlayer.onDurationChanged.listen((newDuration) {
  //     setState(() {
  //       duration=newDuration;
  //     });
  //   });
  //
  // }

  // Future<void> _loadAudio() async {
  //   await audioPlayer.play(UrlSource(''));
  //   audioPlayer.onPositionChanged.listen((newPosition) {
  //     setState(() {
  //       position=newPosition;
  //     });
  //   });
  // }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(onPressed: () => Navigator.pop(context),onClicked: () {
        setState(() {
          isClicked = !isClicked;
        });
      },),
      body:Stack(children: [
        SingleChildScrollView(
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
                    items: [
    //                   MaterialButton(onPressed: (){
    //                     setState(() {
    //                       isClicked3=!isClicked3;
    //                     });
    //                   },
    //                     child: Center(
    //                         child:isClicked3?Center(child: Container(width: 300,height: 75,decoration: BoxDecoration(  borderRadius: BorderRadius.circular(20),
    //                           color: Color(0xffF7D7CC).withOpacity(0.7),),
    //                            child: Column(
    //                             children: [SizedBox(height: 5,),
    //                       Row(mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.center,
    //                         children: [
    //
    //                             SizedBox(width: 60,height: 40,
    //                           child: MaterialButton(onPressed: (){},
    //                               child: Image(
    //                              image: AssetImage('assets/images/music back.png'),
    //                                       width: 12.5,
    //                                           height: 14,
    //                                                    ),
    //                                                  ),
    //                                ),
    //                              SizedBox(width: 60,height: 40,
    // child: MaterialButton(onPressed: (){},
    // child: Image(
    // image: AssetImage('assets/images/music double back.png'),
    // width: 21.5,
    // height: 14,
    // ),
    // ),
    // ),
    //                           isPlaying?  IconButton(onPressed: () {
    //
    //
    //                             setState(() {
    //                               isPlaying=!isPlaying;
    //                               audioPlayer.pause();
    //
    //
    //
    //
    //                             });
    //                           }, icon:Icon(Icons.pause,color: Colors.white,size: 30,)):
    //                           IconButton(onPressed: () {
    //
    //
    //                             setState(() {
    //                               isPlaying=!isPlaying;
    //                               audioPlayer.play(UrlSource('https://www.soundhelix.com/examples/mp3/SoundHelix-Song-2.mp3'));
    //
    //
    //
    //
    //                             });
    //                           }, icon:Icon(Icons.play_arrow,color: Colors.white,size: 30,)),
    //                                              SizedBox(width: 60,height: 40,
    // child: MaterialButton(onPressed: (){},
    // child: Image(
    // image: AssetImage('assets/images/music back 2.png'),
    // width: 12.5,
    // height: 14,
    // ),
    // ),
    // ),
    //                                                 SizedBox(width: 60,height: 40,
    // child: MaterialButton(onPressed: (){},
    // child: Image(
    // image: AssetImage('assets/images/music double forward.png'),
    // width: 21.5,
    // height: 14,
    // ),
    // ),
    // ),
    //
    //                                                    ],
    //                                              ),
    //                                                 //SizedBox(height: 5,),
    //                                                   Container(height: 2,width: 200,
    //                                                       child: Slider(value: position.inSeconds.toDouble(),
    //                                                         min: 0,max: duration.inSeconds.toDouble(),
    //                                                         onChanged: (value) async{
    //                                                         final position=Duration(seconds: value.toInt());
    //                                                         await audioPlayer.seek(position);
    //                                                         await audioPlayer.resume();
    //
    //                                                         },activeColor:Color(0xff7fa6b7) ,inactiveColor: Color(0xff7fa6b7),)),
    //                                      ],
    //                                   ),)): Container(
    //                           width: 80,
    //                           height: 80,
    //                           decoration: BoxDecoration(boxShadow: [
    //                             BoxShadow(
    //                               color: Colors.grey.withOpacity(0.5),
    //                               spreadRadius: 1,
    //                               blurRadius: 5,
    //                               offset: Offset(0, 5),
    //                             ),
    //                           ], borderRadius: BorderRadius.circular(20), color: Colors.white),
    //                           child: Column(
    //                             mainAxisAlignment: MainAxisAlignment.start,
    //                             crossAxisAlignment: CrossAxisAlignment.center,
    //                             children: [
    //                               Image(
    //                                 image: AssetImage('assets/images/ph10.png'),
    //                                 width: 80,
    //                                 height: 80,
    //                               ),
    //                             ],
    //                           ),
    //                         )),
    //                   ),
                      MaterialButton(onPressed: (){},
                        child: Center(
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
                      ),
                      MaterialButton(onPressed: (){},
                        child: Center(
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
                      ),
                    ],
                    options: CarouselOptions(
                        enlargeCenterPage: true,
                        scrollDirection: Axis.horizontal,
                        enlargeFactor: 0.1,
                        reverse: false,
                        initialPage: 0,
                        autoPlay: false,
                        enableInfiniteScroll: true,
                        aspectRatio: 25 / 9,
                        viewportFraction:isClicked3?0.9: 0.4)),
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
                isClicked2? Column(crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row( crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.center,
                      children: [Text('Sleep Mix',style:
                      TextStyle(fontSize: 17, color: Color(0xff1B3662)),)],),
                    SizedBox(height: 10,),
                    Row(crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.center,
                      children: [Text('14 min',style:
                      TextStyle(fontSize: 17, color: Color(0xff1B3662)),)],),
                    SizedBox(height: 10,),
                    MaterialButton(onPressed: (){setState(() {
                      isClicked2=false;
                    });},
                      child: Center(child: Container(width: 300,height: 75,decoration: BoxDecoration(  borderRadius: BorderRadius.circular(20),
                        color: Color(0xffF7D7CC).withOpacity(0.7),),
                        child: Column(
                          children: [SizedBox(height: 5,),
                            Row(mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SizedBox(width: 7,),
                                SizedBox(width: 60,height: 40,
                                  child: MaterialButton(onPressed: (){},
                                    child: Image(
                                      image: AssetImage('assets/images/music back.png'),
                                      width: 12.5,
                                      height: 14,
                                    ),
                                  ),
                                ),
                                SizedBox(width: 60,height: 40,
                                  child: MaterialButton(onPressed: (){},
                                    child: Image(
                                      image: AssetImage('assets/images/music double back.png'),
                                      width: 21.5,
                                      height: 14,
                                    ),
                                  ),
                                ),
                                IconButton(onPressed: (){}, icon: Icon(Icons.pause,color: Colors.white,size: 30,)),
                                SizedBox(width: 60,height: 40,
                                  child: MaterialButton(onPressed: (){},
                                    child: Image(
                                      image: AssetImage('assets/images/music back 2.png'),
                                      width: 12.5,
                                      height: 14,
                                    ),
                                  ),
                                ),
                                SizedBox(width: 60,height: 40,
                                  child: MaterialButton(onPressed: (){},
                                    child: Image(
                                      image: AssetImage('assets/images/music double forward.png'),
                                      width: 21.5,
                                      height: 14,
                                    ),
                                  ),
                                ),

                              ],
                            ),
                            //SizedBox(height: 5,),
                            Image(
                              image: AssetImage('assets/images/music track.png'),
                              width: 136,
                              height: 6,
                            )
                          ],
                        ),)),
                    ),
                  ],
                ): Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 30,
                    ),
                    Center(
                        child: MaterialButton(onPressed: (){setState(() {
                          isClicked2=!isClicked2;
                        });},
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


                SizedBox(height: 20,),

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