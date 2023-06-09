import 'package:flutter/material.dart';
import 'package:test2/videoCall/videoCall2_screen.dart';



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
                  :  Icon(Icons.call,color: Colors.white,),
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

class VideoCall3 extends StatefulWidget {
  @override
  State<VideoCall3> createState() => _ChatState();
}

class _ChatState extends State<VideoCall3> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(

        body: Container(decoration: BoxDecoration(color: Colors.black),
          child: Column(children: [
            SizedBox(height: 300,),
            Center(child: Text('Calling ...',style: TextStyle(color: Colors.white,fontSize: 25),)),
            SizedBox(height: 370,),
            Container(width: double.infinity,
            height: 100,color: Color(0xff7fa6b7),
              child:Row(crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(width: 18,),
                IconButton(onPressed: (){
                  setState(() {

                  });
                }, icon: Icon(Icons.flip_camera_ios_rounded,color: Colors.white,size: 30,)),
                SizedBox(width: 40,),
                IconButton(onPressed: (){
                  setState(() {
                    sound=!sound;
                  });
                }, icon:sound? Icon(Icons.videocam_off,color: Colors.white,size: 30,): Icon(Icons.videocam,color: Colors.white,size: 30,)),
                SizedBox(width: 40,),
                IconButton(onPressed: (){
                  setState(() {
                    mic=!mic;
                  });
                }, icon:mic? Icon(Icons.mic_off,color: Colors.white,size: 30,):Icon(Icons.mic,color: Colors.white,size: 30,)),
                SizedBox(width: 40,),
                Container(width: 45,height: 45,
                  child: CircleAvatar(child: IconButton(onPressed: (){
                    Navigator.pop(context);
                  },icon: Icon(Icons.call_end,color: Colors.white,size: 20,),),

                  ),
                )
              ],
              ) ,)

          ],

          ),
        ));
  }
}
