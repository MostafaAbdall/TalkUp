
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:test2/forget_password/forgetPass1_screen.dart';

import 'forget_password/changePassl_screen.dart';
import 'forget_password/forgetPass2_screen.dart';
import 'forget_password/otb_screen.dart';
import 'modules/chat/doctors_screen.dart';
import 'modules/home/home_layout.dart';
import 'modules/login/login_screen.dart';
import 'modules/sign_up/sign_up_screen.dart';
import 'modules/splash/splash_screen.dart';
import 'modules/started/started_scteen.dart';


Color mainColor = Color(0xff7fa6b7);




void main() {

  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context)
  {

    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.deepOrange,
          scaffoldBackgroundColor: Colors.white,
          appBarTheme: AppBarTheme(
            systemOverlayStyle:SystemUiOverlayStyle(
              statusBarColor: Colors.blueGrey,


            ) ,
            color: Colors.blueGrey,
            elevation: 0.0,
            titleTextStyle: TextStyle(
              color:  Colors.black,
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
            iconTheme: IconThemeData(color: Colors.black) ,
          ),
          bottomNavigationBarTheme: BottomNavigationBarThemeData(
            type: BottomNavigationBarType.fixed,
            selectedItemColor: mainColor,
            elevation: 20.0,
          ),
        ) ,
        home: SplashScreen()


    );
  }

}