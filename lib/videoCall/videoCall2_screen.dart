import 'package:flutter/material.dart';



bool isClicked = false;
bool mic=false;
bool sound=false;


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

class VideoCall2 extends StatefulWidget {
  @override
  State<VideoCall2> createState() => _ChatState();
}

class _ChatState extends State<VideoCall2> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(

        body: Stack(children: [
          Container(decoration: BoxDecoration(color: Color(0xff7fa6b7)),
            child: Column(children: [
              SizedBox(height: 70,),
              Row(crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(width: 40,),
                  Text('Talk Up Call',style: TextStyle(fontSize: 20,color: Colors.white),),
                ],
              ),
              SizedBox(height: 10,),
              Row(crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(width: 40,),
                  Text('DR. Sara Zidan',style: TextStyle(fontSize: 30,color: Colors.white),),
                ],
              ),
              SizedBox(height: 10,),
              Row(crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(width: 40,),
                  Text('Calling ...',style: TextStyle(fontSize: 20,color: Colors.white),),

                ],
              ),
              SizedBox(height: 40,),
              Center(
                child: Container(
                  child: Image(
                    image: AssetImage('assets/images/docCall.jpg'),
                    width: 510,
                    height: 500,
                  ),
                ),
              ),
              SizedBox(height: 15,),
              Row(crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(width: 50,),
                  IconButton(onPressed: (){
                    setState(() {
                      mic=!mic;
                    });
                  }, icon:mic? Icon(Icons.mic_off,color: Colors.white,size: 40,):Icon(Icons.mic,color: Colors.white,size: 40,)),
                  SizedBox(width: 150,),
                  IconButton(onPressed: (){
                    setState(() {
                      sound=!sound;
                    });
                  }, icon:sound? Icon(Icons.volume_off,color: Colors.white,size: 40,): Icon(Icons.volume_up,color: Colors.white,size: 40,)),



                ],)
            ],

            ),
          ),
          Positioned(bottom: 120,right: 140,
              child: Container(width: 70,height: 70,
            child: CircleAvatar(child: IconButton(onPressed: (){
              Navigator.pop(context);
            },icon: Icon(Icons.call_end,color: Colors.white,size: 30,),),

            ),
          ))
        ],));
  }
}
