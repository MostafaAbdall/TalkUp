import 'package:flutter/material.dart';
import 'package:test2/modules/home/home_layout.dart';
import 'package:test2/modules/home/home_screen.dart';

class OtbDone extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image(
            image: AssetImage(
              'assets/images/5.jpg',
            ),
          ),
          SizedBox(
            height: 100,
          ),
          Center(
              child: Text(
            'All Done, That’s set',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 30,
              color: Colors.blueGrey,
            ),
          )),
          SizedBox(
            height: 100,
          ),
          Container(
            width: 300,
            height: 45,
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Home1()),
                );
              },
              child: Center(
                  child: Text(
                'Done',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
              )),
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
