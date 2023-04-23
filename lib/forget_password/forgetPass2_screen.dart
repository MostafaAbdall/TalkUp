import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'otb_screen.dart';

class ForgetPass2 extends StatelessWidget {
  const ForgetPass2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,

        children: [
          Image( image: AssetImage('assets/images/1.jpg',),),
          Image( image: AssetImage('assets/images/Character.png',),),
          SizedBox(height: 50,),
          Container(width: 300,height: 45,
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Otb()),
                );
              },
              child: Center(child: Text('Done',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20.0),)),
              style: ElevatedButton.styleFrom(
                primary: Colors.teal,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            ),
          ),




        ],
      ),
    );
  }
}
