import 'package:flutter/material.dart';
import 'package:test2/videoCall/videoCall2_screen.dart';
import 'package:test2/videoCall/videoCall3_screen.dart';



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

class VideoCall1 extends StatefulWidget {
  @override
  State<VideoCall1> createState() => _ChatState();
}

class _ChatState extends State<VideoCall1> {


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
        body: Column(children: [
          SizedBox(height: 80,),
          Center(
            child: Container(width: 150,height: 150,
                child: CircleAvatar(backgroundColor: Colors.blue,
               )),
          ),
          SizedBox(height: 40,),
          Text('DR. Sara Zidan',style: TextStyle(fontSize: 30,color: Colors.grey),),

          SizedBox(height: 200,),
          Row(crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(width: 70,),
            IconButton(onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        VideoCall3()),
              );
            }, icon: Icon(Icons.video_call,color: Colors.red,size: 50,)),
            SizedBox(width: 90,),
            IconButton(onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        VideoCall2()),
              );
            }, icon: Icon(Icons.call,color: Colors.green,size: 50,)),

          ],
          )
        ],

        ));
  }
}
