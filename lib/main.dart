
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:test2/modules/api_screen.dart';

import 'modules/splash/splash_screen.dart';

Color mainColor = Color(0xff7fa6b7);

void main() {
  HttpOverrides.global = MyHttpOverrides();

  runApp(MyApp());
}
class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)
      ..badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.deepOrange,
          scaffoldBackgroundColor: Colors.white,
          appBarTheme: AppBarTheme(
            systemOverlayStyle: SystemUiOverlayStyle(
              statusBarColor: Colors.blueGrey,
            ),
            color: Colors.blueGrey,
            elevation: 0.0,
            titleTextStyle: TextStyle(
              color: Colors.black,
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
            iconTheme: IconThemeData(color: Colors.black),
          ),
          bottomNavigationBarTheme: BottomNavigationBarThemeData(
            type: BottomNavigationBarType.fixed,
            selectedItemColor: mainColor,
            elevation: 20.0,
          ),
        ),
        home: SplashScreen());
  }
}
