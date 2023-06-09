import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Api extends StatefulWidget {
  const Api({Key? key}) : super(key: key);

  @override
  State<Api> createState() => _ApiState();


}

class _ApiState extends State<Api> {
  void fetchData() async {
    var url = Uri.parse('http://192.168.1.6:44372/api/Auth/profile');

    var response = await http.get(url);

    if (response.statusCode == 200) {
      // Success
      var data = response.body;
      print(data);
      // Process the response data as needed
    } else {
      // Handle the error
      print('Request failed with status code: ${response.statusCode}');
    }
  }
@override
  void initState() {
    fetchData();
    // TODO: implement initState
    super.initState();
  }
@override

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('Hello')),
    );
  }
}
