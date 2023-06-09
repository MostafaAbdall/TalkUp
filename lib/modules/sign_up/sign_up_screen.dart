import 'package:flutter/material.dart';
import 'package:http/http.dart'as http;

import '../login/login_screen.dart';
import '../otb2/otb2_screen.dart';
import 'dart:convert';
import 'dart:io';

// Disable certificate validation (for testing purposes)
HttpClient httpClient = HttpClient()
  ..badCertificateCallback =
  ((X509Certificate cert, String host, int port) => true);

class SignUp extends StatefulWidget {
  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  void  login(String email,String password) async{
    try{
      final Map<String, String> data = {
        "name": email,
        "password": password,
        "gender": "male",
        "email": email
      };
      final response= await http.post(Uri.parse('http://192.168.1.6:44372/api/Auth/register'),
          headers: <String, String>{

            'content-type': "application/json",
          }
          , body: jsonEncode(data), // Encode the data to JSON

      );
      if(response.statusCode==200){
        print('account create sucessfully');
      }else{
        print('failed');
        print(response.statusCode);

      }

    }
    catch(e){
      print(e.toString());
    }

  }
  final formField = GlobalKey<FormState>();

  final emailController = TextEditingController();

  final passController = TextEditingController();

  final passConfController = TextEditingController();

  bool passToggle = true;
  bool passConfToggle = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          key: formField,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image(
                image: AssetImage('assets/images/signup.jpg'),
              ),
              SizedBox(
                height: 30,
              ),
              Center(
                child: Container(
                  width: 300,
                  height: 70,
                  child: TextFormField(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please Enter Email';
                      }
                      bool emailValid = RegExp(
                              r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                          .hasMatch(value);
                      if (!emailValid) {
                        return 'Enter Valid Email';
                      }
                    },
                    controller: emailController,
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(horizontal: 100.0),
                        labelText: 'Email',
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey),
                          borderRadius: BorderRadius.circular(50.0),
                        )),
                  ),
                ),
              ),
              SizedBox(
                height: 5.0,
              ),
              Center(
                child: Container(
                  width: 300,
                  height: 70,
                  child: TextFormField(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please Enter password';
                      }
                    },
                    controller: passController,
                    textAlign: TextAlign.center,
                    obscureText: passToggle,
                    decoration: InputDecoration(
                        suffixIcon: InkWell(
                          onTap: () {
                            setState(() {
                              passToggle = !passToggle;
                            });
                          },
                          child: Icon(passToggle
                              ? Icons.visibility
                              : Icons.visibility_off),
                        ),
                        contentPadding: EdgeInsets.symmetric(horizontal: 80.0),
                        labelText: 'Password',
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey),
                          borderRadius: BorderRadius.circular(50.0),
                        )),
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Center(
                child: Container(
                  width: 300,
                  height: 70,
                  child: TextFormField(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please Enter Confirm Password';
                      }
                    },
                    controller: passConfController,
                    textAlign: TextAlign.center,
                    obscureText: passConfToggle,
                    decoration: InputDecoration(
                        suffixIcon: InkWell(
                          onTap: () {
                            setState(() {
                              passConfToggle = !passConfToggle;
                            });
                          },
                          child: Icon(passConfToggle
                              ? Icons.visibility
                              : Icons.visibility_off),
                        ),
                        contentPadding: EdgeInsets.symmetric(horizontal: 60.0),
                        labelText: 'Confirm Password',
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey),
                          borderRadius: BorderRadius.circular(50.0),
                        )),
                  ),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Center(
                child: Container(
                  width: 302,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {
                      login(emailController.text.toString(), passConfController.text.toString());
                      if (formField.currentState!.validate()) {

                        emailController.clear();
                        passController.clear();
                        passConfController.clear();
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Otb2()),
                        );
                      }
                    },
                    child: Text(
                      'Sign up',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 20.0),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.teal,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                  ),
                ),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 40,
                  ),
                  Container(
                      child: MaterialButton(
                    onPressed: () {},
                    child: Image(
                      image: AssetImage('assets/images/google.png'),
                      width: 40,
                      height: 40,
                    ),
                  )),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                      child: MaterialButton(
                    onPressed: () {},
                    child: Image(
                      image: AssetImage('assets/images/facebook.png'),
                      width: 50,
                      height: 50,
                    ),
                  )),
                  Container(
                      child: MaterialButton(
                    onPressed: () {},
                    child: Image(
                      image: AssetImage('assets/images/apple.png'),
                      width: 80,
                      height: 80,
                    ),
                  )),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 70,
                  ),
                  Text('Already Have an Account?'),
                  MaterialButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Login()),
                      );
                    },
                    child: Text(
                      'Log-in',
                      style: TextStyle(
                          color: Colors.cyan,
                          decoration: TextDecoration.underline),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
